module github.com/as-polyakov/minio

go 1.14

replace github.com/Azure/go-autorest/autorest/adal => github.com/Azure/go-autorest/autorest/adal v0.9.21

replace github.com/spf13/cobra => github.com/spf13/cobra v1.5.0

replace git.apache.org/thrift.git/lib/go/thrift => github.com/apache/thrift/lib/go/thrift v0.14.0

replace github.com/minio/minio => github.com/as-polyakov/minio v0.1.0-cvefix.1

require (
	cloud.google.com/go v0.103.0
	cloud.google.com/go/storage v1.23.0
	git.apache.org/thrift.git v0.14.2
	github.com/Azure/azure-pipeline-go v0.2.3
	github.com/Azure/azure-storage-blob-go v0.10.0
	github.com/Azure/go-autorest/autorest/adal v0.9.21 // indirect
	github.com/Shopify/sarama v1.27.2
	github.com/StackExchange/wmi v0.0.0-20190523213315-cbe66965904d // indirect
	github.com/alecthomas/participle v0.2.1
	github.com/apache/thrift v0.16.0
	github.com/bcicen/jstream v1.0.1
	github.com/beevik/ntp v0.3.0
	github.com/cespare/xxhash/v2 v2.1.1
	github.com/cheggaaa/pb v1.0.29
	github.com/colinmarc/hdfs/v2 v2.1.1
	github.com/coredns/coredns v1.4.0
	github.com/dchest/siphash v1.2.1
	github.com/djherbis/atime v1.0.0
	github.com/dswarbrick/smart v0.0.0-20190505152634-909a45200d6d
	github.com/dustin/go-humanize v1.0.0
	github.com/eclipse/paho.mqtt.golang v1.3.0
	github.com/elazarl/go-bindata-assetfs v1.0.0
	github.com/fatih/color v1.13.0
	github.com/fatih/structs v1.1.0
	github.com/go-ole/go-ole v1.2.4 // indirect
	github.com/go-sql-driver/mysql v1.6.0
	github.com/gogo/protobuf v1.3.2
	github.com/golang-jwt/jwt v3.2.2+incompatible
	github.com/gomodule/redigo v1.8.3
	github.com/google/uuid v1.3.0
	github.com/gorilla/handlers v1.5.1
	github.com/gorilla/mux v1.8.0
	github.com/hashicorp/vault/api v1.0.4
	github.com/json-iterator/go v1.1.12
	github.com/klauspost/compress v1.14.4
	github.com/klauspost/cpuid v1.3.1
	github.com/klauspost/pgzip v1.2.5
	github.com/klauspost/readahead v1.3.1
	github.com/klauspost/reedsolomon v1.9.9
	github.com/lib/pq v1.10.4
	github.com/mattn/go-colorable v0.1.12
	github.com/mattn/go-ieproxy v0.0.1 // indirect
	github.com/mattn/go-isatty v0.0.14
	github.com/miekg/dns v1.1.41
	github.com/minio/cli v1.22.0
	github.com/minio/highwayhash v1.0.2
	github.com/minio/minio v0.0.0-20220817155032-67cf15d03665
	github.com/minio/minio-go/v7 v7.0.7-0.20210105224719-8dddba43079f
	github.com/minio/selfupdate v0.3.1
	github.com/minio/sha256-simd v0.1.1
	github.com/minio/simdjson-go v0.1.5
	github.com/minio/sio v0.2.1
	github.com/mitchellh/go-homedir v1.1.0
	github.com/mmcloughlin/avo v0.0.0-20200803215136-443f81d77104 // indirect
	github.com/montanaflynn/stats v0.5.0
	github.com/nats-io/jwt v1.2.3-0.20210314221642-a826c77dc9d2
	github.com/nats-io/nats-server/v2 v2.7.4
	github.com/nats-io/nats-streaming-server v0.24.3 // indirect
	github.com/nats-io/nats.go v1.13.1-0.20220308171302-2f2f6968e98d
	github.com/nats-io/stan.go v0.10.2
	github.com/ncw/directio v1.0.5
	github.com/nsqio/go-nsq v1.0.8
	github.com/olivere/elastic/v7 v7.0.22
	github.com/philhofer/fwd v1.1.1
	github.com/pierrec/lz4 v2.5.2+incompatible
	github.com/pkg/errors v0.9.1
	github.com/poloxue/modv v0.1.0 // indirect
	github.com/prometheus/client_golang v1.11.1
	github.com/rjeczalik/notify v0.9.2
	github.com/rs/cors v1.7.0
	github.com/secure-io/sio-go v0.3.0
	github.com/shirou/gopsutil v3.20.11+incompatible
	github.com/spaolacci/murmur3 v1.1.0 // indirect
	github.com/spf13/cobra v1.5.0
	github.com/spf13/viper v1.12.0
	github.com/streadway/amqp v1.0.0
	github.com/tidwall/gjson v1.9.3
	github.com/tidwall/sjson v1.0.4
	github.com/tinylib/msgp v1.1.5
	github.com/valyala/tcplisten v0.0.0-20161114210144-ceec8f93295a
	github.com/willf/bitset v1.1.11 // indirect
	github.com/willf/bloom v2.0.3+incompatible
	github.com/xdg/scram v0.0.0-20180814205039-7eeb5667e42c
	go.etcd.io/etcd/api/v3 v3.5.4
	go.etcd.io/etcd/client/v3 v3.5.4
	go.etcd.io/etcd/v3 v3.5.0
	golang.org/x/crypto v0.0.0-20220722155217-630584e8d5aa
	golang.org/x/net v0.0.0-20220812174116-3211cb980234
	golang.org/x/sys v0.0.0-20220811171246-fbc7d0a398ab
	golang.org/x/text v0.3.7
	google.golang.org/api v0.86.0
	google.golang.org/genproto v0.0.0-20220815135757-37a418bb8959 // indirect
	google.golang.org/grpc v1.48.0
	gopkg.in/jcmturner/gokrb5.v7 v7.5.0
	gopkg.in/ldap.v3 v3.0.3
	gopkg.in/yaml.v2 v2.4.0
	gopkg.in/yaml.v3 v3.0.1

)
