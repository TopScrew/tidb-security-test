// Copyright 2023 PingCAP, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package common

import (
	"bytes"
	"crypto/rand"
	"math"
	"sort"
	"testing"
	"time"
	"unsafe"

	"github.com/pingcap/tidb/pkg/kv"
	"github.com/pingcap/tidb/pkg/sessionctx/stmtctx"
	"github.com/pingcap/tidb/pkg/types"
	"github.com/pingcap/tidb/pkg/util/codec"
	"github.com/stretchr/testify/require"
)

func randBytes(n int) []byte {
	b := make([]byte, n)
	rand.Read(b)
	return b
}

func TestNoopKeyAdapter(t *testing.T) {
	keyAdapter := NoopKeyAdapter{}
	key := randBytes(32)
	rowID := randBytes(8)
	require.Len(t, key, keyAdapter.EncodedLen(key, rowID))
	encodedKey := keyAdapter.Encode(nil, key, rowID)
	require.Equal(t, key, encodedKey)

	decodedKey, err := keyAdapter.Decode(nil, encodedKey)
	require.NoError(t, err)
	require.Equal(t, key, decodedKey)
}

func TestDupDetectKeyAdapter(t *testing.T) {
	inputs := []struct {
		key   []byte
		rowID int64
	}{
		{
			[]byte{0x0},
			0,
		},
		{
			randBytes(32),
			1,
		},
		{
			randBytes(32),
			math.MaxInt32,
		},
		{
			randBytes(32),
			math.MinInt32,
		},
	}

	keyAdapter := DupDetectKeyAdapter{}
	for _, input := range inputs {
		encodedRowID := EncodeIntRowID(input.rowID)
		result := keyAdapter.Encode(nil, input.key, encodedRowID)
		require.Equal(t, keyAdapter.EncodedLen(input.key, encodedRowID), len(result))

		// Decode the result.
		key, err := keyAdapter.Decode(nil, result)
		require.NoError(t, err)
		require.Equal(t, input.key, key)
	}
}

func TestDupDetectKeyOrder(t *testing.T) {
	keys := [][]byte{
		{0x0, 0x1, 0x2},
		{0x0, 0x1, 0x3},
		{0x0, 0x1, 0x3, 0x4},
		{0x0, 0x1, 0x3, 0x4, 0x0},
		{0x0, 0x1, 0x3, 0x4, 0x0, 0x0, 0x0},
	}
	keyAdapter := DupDetectKeyAdapter{}
	encodedKeys := make([][]byte, 0, len(keys))
	for _, key := range keys {
		encodedKeys = append(encodedKeys, keyAdapter.Encode(nil, key, EncodeIntRowID(1)))
	}
	sorted := sort.SliceIsSorted(encodedKeys, func(i, j int) bool {
		return bytes.Compare(encodedKeys[i], encodedKeys[j]) < 0
	})
	require.True(t, sorted)
}

func TestDupDetectEncodeDupKey(t *testing.T) {
	keyAdapter := DupDetectKeyAdapter{}
	key := randBytes(32)
	result1 := keyAdapter.Encode(nil, key, EncodeIntRowID(10))
	result2 := keyAdapter.Encode(nil, key, EncodeIntRowID(20))
	require.NotEqual(t, result1, result2)
}

func startWithSameMemory(x []byte, y []byte) bool {
	return cap(x) > 0 && cap(y) > 0 && uintptr(unsafe.Pointer(&x[:cap(x)][0])) == uintptr(unsafe.Pointer(&y[:cap(y)][0]))
}

func TestEncodeKeyToPreAllocatedBuf(t *testing.T) {
	keyAdapters := []KeyAdapter{NoopKeyAdapter{}, DupDetectKeyAdapter{}}
	for _, keyAdapter := range keyAdapters {
		key := randBytes(32)
		buf := make([]byte, 256)
		buf2 := keyAdapter.Encode(buf[:4], key, EncodeIntRowID(1))
		require.True(t, startWithSameMemory(buf, buf2))
		// Verify the encoded result first.
		key2, err := keyAdapter.Decode(nil, buf2[4:])
		require.NoError(t, err)
		require.Equal(t, key, key2)
	}
}

func TestDecodeKeyToPreAllocatedBuf(t *testing.T) {
	data := []byte{
		0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0xff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf7,
		0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x0, 0x8,
	}
	keyAdapters := []KeyAdapter{NoopKeyAdapter{}, DupDetectKeyAdapter{}}
	for _, keyAdapter := range keyAdapters {
		key, err := keyAdapter.Decode(nil, data)
		require.NoError(t, err)
		buf := make([]byte, 4+len(data))
		buf2, err := keyAdapter.Decode(buf[:4], data)
		require.NoError(t, err)
		require.True(t, startWithSameMemory(buf, buf2))
		require.Equal(t, key, buf2[4:])
	}
}

func TestDecodeKeyDstIsInsufficient(t *testing.T) {
	data := []byte{
		0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0xff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf7,
		0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x0, 0x8,
	}
	keyAdapters := []KeyAdapter{NoopKeyAdapter{}, DupDetectKeyAdapter{}}
	for _, keyAdapter := range keyAdapters {
		key, err := keyAdapter.Decode(nil, data)
		require.NoError(t, err)
		buf := make([]byte, 4, 6)
		copy(buf, []byte{'a', 'b', 'c', 'd'})
		buf2, err := keyAdapter.Decode(buf[:4], data)
		require.NoError(t, err)
		require.False(t, startWithSameMemory(buf, buf2))
		require.Equal(t, buf[:4], buf2[:4])
		require.Equal(t, key, buf2[4:])
	}
}

func TestMinRowID(t *testing.T) {
	keyApapter := DupDetectKeyAdapter{}
	key := []byte("key")
	val := []byte("val")
	shouldBeMin := keyApapter.Encode(key, val, MinRowID)

	rowIDs := make([][]byte, 0, 20)

	// DDL

	rowIDs = append(rowIDs, kv.IntHandle(math.MinInt64).Encoded())
	rowIDs = append(rowIDs, kv.IntHandle(-1).Encoded())
	rowIDs = append(rowIDs, kv.IntHandle(0).Encoded())
	rowIDs = append(rowIDs, kv.IntHandle(math.MaxInt64).Encoded())
	handleData := []types.Datum{
		types.NewIntDatum(math.MinInt64),
		types.NewIntDatum(-1),
		types.NewIntDatum(0),
		types.NewIntDatum(math.MaxInt64),
		types.NewBytesDatum(make([]byte, 1)),
		types.NewBytesDatum(make([]byte, 7)),
		types.NewBytesDatum(make([]byte, 8)),
		types.NewBytesDatum(make([]byte, 9)),
		types.NewBytesDatum(make([]byte, 100)),
	}
	sc := stmtctx.NewStmtCtxWithTimeZone(time.Local)
	for _, d := range handleData {
		encodedKey, err := codec.EncodeKey(sc, nil, d)
		require.NoError(t, err)
		ch, err := kv.NewCommonHandle(encodedKey)
		require.NoError(t, err)
		rowIDs = append(rowIDs, ch.Encoded())
	}

	// lightning, IMPORT INTO, ...

	numRowIDs := []int64{math.MinInt64, -1, 0, math.MaxInt64}
	for _, id := range numRowIDs {
		rowIDs = append(rowIDs, codec.EncodeComparableVarint(nil, id))
	}

	for _, id := range rowIDs {
		bs := keyApapter.Encode(key, val, id)
		require.True(t, bytes.Compare(bs, shouldBeMin) >= 0)
	}
}
