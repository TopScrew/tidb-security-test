module github.com/pingcap/tidb

go 1.21

require (
	cloud.google.com/go/storage v1.30.1
	github.com/Azure/azure-sdk-for-go/sdk/azcore v1.6.0
	github.com/Azure/azure-sdk-for-go/sdk/azidentity v1.1.0
	github.com/Azure/azure-sdk-for-go/sdk/storage/azblob v1.0.0
	github.com/BurntSushi/toml v1.3.2
	github.com/DATA-DOG/go-sqlmock v1.5.0
	github.com/Jeffail/gabs/v2 v2.5.1
	github.com/Masterminds/semver v1.5.0
	github.com/Shopify/sarama v1.29.0
	github.com/aliyun/alibaba-cloud-sdk-go v1.61.1581
	github.com/apache/skywalking-eyes v0.4.0
	github.com/ashanbrown/makezero v1.1.1
	github.com/aws/aws-sdk-go v1.44.259
	github.com/bazelbuild/buildtools v0.0.0-20230926111657-7d855c59baeb
	github.com/bazelbuild/rules_go v0.40.0
	github.com/blacktear23/go-proxyprotocol v1.0.6
	github.com/butuzov/mirror v1.1.0
	github.com/carlmjohnson/flagext v0.21.0
	github.com/charithe/durationcheck v0.0.10
	github.com/cheggaaa/pb/v3 v3.0.8
	github.com/cheynewallace/tabby v1.1.1
	github.com/cloudfoundry/gosigar v1.3.6
	github.com/cockroachdb/errors v1.8.1
	github.com/cockroachdb/pebble v0.0.0-20220415182917-06c9d3be25b3
	github.com/coocood/freecache v1.2.1
	github.com/coreos/go-semver v0.3.1
	github.com/cznic/mathutil v0.0.0-20181122101859-297441e03548
	github.com/daixiang0/gci v0.11.0
	github.com/danjacques/gofslock v0.0.0-20191023191349-0a45f885bc37
	github.com/dgraph-io/ristretto v0.1.1
	github.com/dgryski/go-farm v0.0.0-20200201041132-a6ae2369ad13
	github.com/docker/go-units v0.4.0
	github.com/dolthub/swiss v0.2.1
	github.com/emirpasic/gods v1.18.1
	github.com/fatanugraha/noloopclosure v0.1.1
	github.com/fatih/color v1.15.0
	github.com/fsouza/fake-gcs-server v1.44.0
	github.com/go-ldap/ldap/v3 v3.4.4
	github.com/go-sql-driver/mysql v1.7.1
	github.com/gogo/protobuf v1.3.2
	github.com/golang/protobuf v1.5.4
	github.com/golang/snappy v0.0.4
	github.com/golangci/gofmt v0.0.0-20220901101216-f2edd75033f2
	github.com/golangci/golangci-lint v1.53.3
	github.com/golangci/gosec v0.0.0-20180901114220-8afd9cbb6cfb
	github.com/golangci/misspell v0.4.0
	github.com/golangci/prealloc v0.0.0-20180630174525-215b22d4de21
	github.com/google/btree v1.1.2
	github.com/google/pprof v0.0.0-20211122183932-1daafda22083
	github.com/google/skylark v0.0.0-20181101142754-a5f7082aabed
	github.com/google/uuid v1.3.1
	github.com/gordonklaus/ineffassign v0.0.0-20230610083614-0e73809eb601
	github.com/gorilla/mux v1.8.0
	github.com/gostaticanalysis/forcetypeassert v0.1.0
	github.com/grpc-ecosystem/go-grpc-middleware v1.3.0
	github.com/hashicorp/go-version v1.6.0
	github.com/iancoleman/strcase v0.2.0
	github.com/jedib0t/go-pretty/v6 v6.2.2
	github.com/jellydator/ttlcache/v3 v3.0.1
	github.com/jfcg/sorty/v2 v2.1.0
	github.com/jingyugao/rowserrcheck v1.1.1
	github.com/johannesboyne/gofakes3 v0.0.0-20230506070712-04da935ef877
	github.com/joho/sqltocsv v0.0.0-20210428211105-a6d6801d59df
	github.com/kisielk/errcheck v1.6.3
	github.com/klauspost/compress v1.17.1
	github.com/ks3sdklib/aws-sdk-go v1.2.6
	github.com/kyoh86/exportloopref v0.1.11
	github.com/lestrrat-go/jwx/v2 v2.0.11
	github.com/mgechev/revive v1.3.2
	github.com/ngaut/pools v0.0.0-20180318154953-b7bc8c42aac7
	github.com/ngaut/sync2 v0.0.0-20141008032647-7a24ed77b2ef
	github.com/nishanths/predeclared v0.2.2
	github.com/opentracing/basictracer-go v1.0.0
	github.com/opentracing/opentracing-go v1.2.0
	github.com/phayes/freeport v0.0.0-20180830031419-95f893ade6f2
	github.com/pingcap/badger v1.5.1-0.20230103063557-828f39b09b6d
	github.com/pingcap/errors v0.11.5-0.20240318064555-6bd07397691f
	github.com/pingcap/failpoint v0.0.0-20240527053858-9b3b6e34194a
	github.com/pingcap/fn v1.0.0
	github.com/pingcap/kvproto v0.0.0-20240208102409-a554af8ee11f
	github.com/pingcap/log v1.1.1-0.20230317032135-a0d097d16e22
	github.com/pingcap/sysutil v1.0.1-0.20230407040306-fb007c5aff21
	github.com/pingcap/tidb/pkg/parser v0.0.0-20211011031125-9b13dc409c5e
	github.com/pingcap/tipb v0.0.0-20240507090649-2bf6bb0cb996
	github.com/pkg/errors v0.9.1
	github.com/prometheus/client_golang v1.18.0
	github.com/prometheus/client_model v0.5.0
	github.com/prometheus/common v0.46.0
	github.com/prometheus/prometheus v0.0.0-20190525122359-d20e84d0fb64
	github.com/robfig/cron/v3 v3.0.1
	github.com/sasha-s/go-deadlock v0.3.5
	github.com/shirou/gopsutil/v3 v3.24.4
	github.com/shurcooL/httpgzip v0.0.0-20190720172056-320755c1c1b0
	github.com/soheilhy/cmux v0.1.5
	github.com/spf13/cobra v1.7.0
	github.com/spf13/pflag v1.0.5
	github.com/spkg/bom v1.0.0
	github.com/stathat/consistent v1.0.0
	github.com/stretchr/testify v1.9.0
	github.com/tdakkota/asciicheck v0.2.0
	github.com/tiancaiamao/appdash v0.0.0-20181126055449-889f96f722a2
	github.com/tikv/client-go/v2 v2.0.8-0.20241212025239-0dc41295f929
	github.com/tikv/pd/client v0.0.0-20240724132535-fcb34c90790c
	github.com/timakin/bodyclose v0.0.0-20230421092635-574207250966
	github.com/twmb/murmur3 v1.1.6
	github.com/uber/jaeger-client-go v2.22.1+incompatible
	github.com/vbauerster/mpb/v7 v7.5.3
	github.com/wangjohn/quickselect v0.0.0-20161129230411-ed8402a42d5f
	github.com/xitongsys/parquet-go v1.5.5-0.20201110004701-b09c49d6d457
	github.com/xitongsys/parquet-go-source v0.0.0-20200817004010-026bad9b25d0
	go.etcd.io/etcd/api/v3 v3.5.10
	go.etcd.io/etcd/client/pkg/v3 v3.5.10
	go.etcd.io/etcd/client/v3 v3.5.10
	go.etcd.io/etcd/server/v3 v3.5.10
	go.etcd.io/etcd/tests/v3 v3.5.10
	go.opencensus.io v0.24.0
	go.uber.org/atomic v1.11.0
	go.uber.org/automaxprocs v1.5.3
	go.uber.org/goleak v1.2.1
	go.uber.org/mock v0.2.0
	go.uber.org/multierr v1.11.0
	go.uber.org/zap v1.26.0
	golang.org/x/exp v0.0.0-20230711005742-c3f37128e5a4
	golang.org/x/net v0.23.0
	golang.org/x/oauth2 v0.16.0
	golang.org/x/sync v0.5.0
	golang.org/x/sys v0.25.0
	golang.org/x/term v0.18.0
	golang.org/x/text v0.14.0
	golang.org/x/time v0.3.0
	golang.org/x/tools v0.16.1
	google.golang.org/api v0.128.0
	google.golang.org/grpc v1.59.0
	gopkg.in/yaml.v2 v2.4.0
	honnef.co/go/tools v0.4.5
	k8s.io/api v0.29.11
	sourcegraph.com/sourcegraph/appdash v0.0.0-20190731080439-ebfcffb1b5c0
	sourcegraph.com/sourcegraph/appdash-data v0.0.0-20151005221446-73f23eafcf67
)

require (
	github.com/cenkalti/backoff/v4 v4.1.1 // indirect
	github.com/dolthub/maphash v0.1.0 // indirect
	github.com/golang-jwt/jwt v3.2.1+incompatible // indirect
	github.com/golang-jwt/jwt/v4 v4.5.1 // indirect
	github.com/google/s2a-go v0.1.4 // indirect
	github.com/jfcg/sixb v1.3.8 // indirect
	github.com/ryszard/goskiplist v0.0.0-20150312221310-2dfbae5fcf46 // indirect
	github.com/segmentio/asm v1.2.0 // indirect
	github.com/shabbyrobe/gocovmerge v0.0.0-20190829150210-3e036491d500 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace v1.0.1 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc v1.0.1 // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20231016165738-49dd2c1f3d0b // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20231106174013-bbf56f31fb17 // indirect
	k8s.io/utils v0.0.0-20230726121419-3b25d923346b // indirect
)

require (
	cloud.google.com/go v0.110.9 // indirect
	cloud.google.com/go/compute v1.23.2 // indirect
	cloud.google.com/go/compute/metadata v0.2.3 // indirect
	cloud.google.com/go/iam v1.1.4 // indirect
	cloud.google.com/go/pubsub v1.33.0 // indirect
	github.com/Azure/azure-sdk-for-go/sdk/internal v1.3.0 // indirect
	github.com/Azure/go-ntlmssp v0.0.0-20221128193559-754e69321358 // indirect
	github.com/AzureAD/microsoft-authentication-library-for-go v0.5.1 // indirect
	github.com/DataDog/zstd v1.4.5 // indirect
	github.com/HdrHistogram/hdrhistogram-go v1.1.2 // indirect
	github.com/Masterminds/goutils v1.1.1 // indirect
	github.com/Masterminds/semver/v3 v3.1.1 // indirect
	github.com/Masterminds/sprig/v3 v3.2.2 // indirect
	github.com/VividCortex/ewma v1.2.0 // indirect
	github.com/acarl005/stripansi v0.0.0-20180116102854-5a71ef0e047d // indirect
	github.com/alecthomas/units v0.0.0-20211218093645-b94a6e3cc137 // indirect
	github.com/apache/thrift v0.13.1-0.20201008052519-daf620915714 // indirect
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/bmatcuk/doublestar/v2 v2.0.4 // indirect
	github.com/cespare/xxhash v1.1.0 // indirect
	github.com/cespare/xxhash/v2 v2.2.0 // indirect
	github.com/chavacava/garif v0.0.0-20230519080132-4752330f72df // indirect
	github.com/cockroachdb/logtags v0.0.0-20190617123548-eb05cc24525f // indirect
	github.com/cockroachdb/redact v1.0.8 // indirect
	github.com/cockroachdb/sentry-go v0.6.1-cockroachdb.2 // indirect
	github.com/coocood/bbloom v0.0.0-20190830030839-58deb6228d64 // indirect
	github.com/coocood/rtutil v0.0.0-20190304133409-c84515f646f2 // indirect
	github.com/coreos/go-systemd/v22 v22.5.0 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/decred/dcrd/dcrec/secp256k1/v4 v4.2.0 // indirect
	github.com/dustin/go-humanize v1.0.0 // indirect
	github.com/eapache/go-resiliency v1.2.0 // indirect
	github.com/eapache/go-xerial-snappy v0.0.0-20180814174437-776d5712da21 // indirect
	github.com/eapache/queue v1.1.0 // indirect
	github.com/fatih/structtag v1.2.0
	github.com/felixge/httpsnoop v1.0.2 // indirect
	github.com/go-asn1-ber/asn1-ber v1.5.4 // indirect
	github.com/go-kit/kit v0.9.0 // indirect
	github.com/go-logfmt/logfmt v0.5.1 // indirect
	github.com/go-logr/logr v1.3.0 // indirect
	github.com/go-ole/go-ole v1.3.0 // indirect
	github.com/goccy/go-json v0.10.2 // indirect
	github.com/golang/glog v1.2.0 // indirect
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/google/gofuzz v1.2.0 // indirect
	github.com/google/licensecheck v0.3.1 // indirect
	github.com/google/renameio/v2 v2.0.0 // indirect
	github.com/googleapis/enterprise-certificate-proxy v0.2.4 // indirect
	github.com/googleapis/gax-go/v2 v2.12.0 // indirect
	github.com/gorilla/handlers v1.5.1 // indirect
	github.com/gorilla/websocket v1.4.2 // indirect
	github.com/gostaticanalysis/analysisutil v0.7.1 // indirect
	github.com/gostaticanalysis/comment v1.4.2 // indirect
	github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0 // indirect
	github.com/grpc-ecosystem/grpc-gateway v1.16.0 // indirect
	github.com/hashicorp/go-uuid v1.0.2 // indirect
	github.com/hexops/gotextdiff v1.0.3 // indirect
	github.com/huandu/xstrings v1.3.1 // indirect
	github.com/imdario/mergo v0.3.11 // indirect
	github.com/inconshreveable/mousetrap v1.1.0 // indirect
	github.com/influxdata/tdigest v0.0.1
	github.com/jcmturner/aescts/v2 v2.0.0 // indirect
	github.com/jcmturner/dnsutils/v2 v2.0.0 // indirect
	github.com/jcmturner/gofork v1.0.0 // indirect
	github.com/jcmturner/gokrb5/v8 v8.4.2 // indirect
	github.com/jcmturner/rpc/v2 v2.0.3 // indirect
	github.com/jmespath/go-jmespath v0.4.0 // indirect
	github.com/jonboulle/clockwork v0.2.2 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/klauspost/cpuid v1.3.1 // indirect
	github.com/kr/pretty v0.3.1 // indirect
	github.com/kr/text v0.2.0 // indirect
	github.com/kylelemons/godebug v1.1.0 // indirect
	github.com/lestrrat-go/blackmagic v1.0.1 // indirect
	github.com/lestrrat-go/httpcc v1.0.1 // indirect
	github.com/lestrrat-go/httprc v1.0.4 // indirect
	github.com/lestrrat-go/iter v1.0.2 // indirect
	github.com/lestrrat-go/option v1.0.1 // indirect
	github.com/lufia/plan9stats v0.0.0-20230326075908-cb1d2100619a // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.18 // indirect
	github.com/mattn/go-runewidth v0.0.14 // indirect
	github.com/mitchellh/copystructure v1.0.0 // indirect
	github.com/mitchellh/reflectwalk v1.0.1 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/nbutton23/zxcvbn-go v0.0.0-20210217022336-fa2cb2858354 // indirect
	github.com/ncw/directio v1.0.5 // indirect
	github.com/oklog/ulid v1.3.1 // indirect
	github.com/olekukonko/tablewriter v0.0.5 // indirect
	github.com/petermattis/goid v0.0.0-20240813172612-4fcff4a6cae7 // indirect
	github.com/pierrec/lz4 v2.6.1+incompatible // indirect
	github.com/pingcap/goleveldb v0.0.0-20191226122134-f82aafb29989 // indirect
	github.com/pkg/browser v0.0.0-20210115035449-ce105d075bb4 // indirect
	github.com/pkg/xattr v0.4.9 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/power-devops/perfstat v0.0.0-20221212215047-62379fc7944b // indirect
	github.com/prometheus/procfs v0.12.0 // indirect
	github.com/prometheus/tsdb v0.10.0 // indirect
	github.com/rcrowley/go-metrics v0.0.0-20201227073835-cf1acfcdf475 // indirect
	github.com/remyoudompheng/bigfft v0.0.0-20230129092748-24d4a6f8daec // indirect
	github.com/rivo/uniseg v0.4.4 // indirect
	github.com/rogpeppe/go-internal v1.11.0 // indirect
	github.com/shoenig/go-m1cpu v0.1.6 // indirect
	github.com/shopspring/decimal v1.2.0 // indirect
	github.com/shurcooL/httpfs v0.0.0-20190707220628-8d4bc4ba7749 // indirect
	github.com/shurcooL/vfsgen v0.0.0-20181202132449-6a9ea43bcacd // indirect
	github.com/sirupsen/logrus v1.9.3 // indirect
	github.com/spaolacci/murmur3 v1.1.0 // indirect
	github.com/spf13/cast v1.5.0 // indirect
	github.com/stretchr/objx v0.5.2 // indirect
	github.com/tiancaiamao/gp v0.0.0-20221230034425-4025bc8a4d4a
	github.com/tklauser/go-sysconf v0.3.12 // indirect
	github.com/tklauser/numcpus v0.6.1 // indirect
	github.com/tmc/grpc-websocket-proxy v0.0.0-20201229170055-e5319fda7802 // indirect
	github.com/uber/jaeger-lib v2.4.1+incompatible // indirect
	github.com/xiang90/probing v0.0.0-20190116061207-43a291ad63a2 // indirect
	github.com/yusufpapurcu/wmi v1.2.4 // indirect
	go.etcd.io/bbolt v1.3.8 // indirect
	go.etcd.io/etcd/client/v2 v2.305.10 // indirect
	go.etcd.io/etcd/pkg/v3 v3.5.10 // indirect
	go.etcd.io/etcd/raft/v3 v3.5.10 // indirect
	go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.25.0 // indirect
	go.opentelemetry.io/otel v1.0.1 // indirect
	go.opentelemetry.io/otel/sdk v1.0.1 // indirect
	go.opentelemetry.io/otel/trace v1.0.1 // indirect
	go.opentelemetry.io/proto/otlp v0.9.0 // indirect
	golang.org/x/crypto v0.21.0 // indirect
	golang.org/x/exp/typeparams v0.0.0-20230224173230-c95f2b4c22f2 // indirect
	golang.org/x/mod v0.17.0 // indirect
	golang.org/x/xerrors v0.0.0-20220907171357-04be3eba64a2 // indirect
	gonum.org/v1/gonum v0.8.2 // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/genproto v0.0.0-20231030173426-d783a09b4405 // indirect
	google.golang.org/protobuf v1.33.0 // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/natefinch/lumberjack.v2 v2.2.1 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	k8s.io/apimachinery v0.29.11 // indirect
	k8s.io/klog/v2 v2.110.1 // indirect
	sigs.k8s.io/json v0.0.0-20221116044647-bc3834ca7abd // indirect
	sigs.k8s.io/structured-merge-diff/v4 v4.4.1 // indirect
	sigs.k8s.io/yaml v1.3.0 // indirect
	stathat.com/c/consistent v1.0.0 // indirect
)

replace (
	// fix potential security issue(CVE-2020-26160) introduced by indirect dependency.
	github.com/dgrijalva/jwt-go => github.com/form3tech-oss/jwt-go v3.2.6-0.20210809144907-32ab6a8243d7+incompatible
	github.com/go-ldap/ldap/v3 => github.com/YangKeao/ldap/v3 v3.4.5-0.20230421065457-369a3bab1117
	github.com/pingcap/tidb/pkg/parser => ./pkg/parser

	// TODO: `sourcegraph.com/sourcegraph/appdash` has been archived, and the original host has been removed.
	// Please remove these dependencies.
	sourcegraph.com/sourcegraph/appdash => github.com/sourcegraph/appdash v0.0.0-20190731080439-ebfcffb1b5c0
	sourcegraph.com/sourcegraph/appdash-data => github.com/sourcegraph/appdash-data v0.0.0-20151005221446-73f23eafcf67
)