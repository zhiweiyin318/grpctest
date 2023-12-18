module github.com/zhiweiyin318/grpctest

go 1.20

replace google.golang.org/grpc v1.59.0 => github.com/zhiweiyin318/grpc-go v0.0.0-20231218110607-1227899b73cf

require (
	google.golang.org/grpc v1.59.0
	google.golang.org/protobuf v1.31.0
)

require (
	github.com/golang/protobuf v1.5.3 // indirect
	golang.org/x/net v0.18.0 // indirect
	golang.org/x/sys v0.14.0 // indirect
	golang.org/x/text v0.14.0 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20231106174013-bbf56f31fb17 // indirect
)
