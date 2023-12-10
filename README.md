
Example is from https://github.com/grpc/grpc-go/blob/master/examples/helloworld

1. Install protoc

https://github.com/protocolbuffers/protobuf/releases

```
 protoc --version
```

2. Install protoc-gen-go

```
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
protoc-gen-go --version
```

3. generate proto

```
protoc helloworld/helloworld.proto --go_out=helloworld/ --go-grpc_out=helloworld/
```

4. build

```
go build -o bin/server ./server
go build -o  bin/client ./client
```

5. run

```
./bin/server
./bin/client
```


6. tls

```
openssl genrsa -out ca.key 2048

openssl req -new -x509 -days 36500 -key ca.key -out ca.crt -config openssl.cnf

openssl genrsa -out server.key 2048

openssl req -new -key server.key -out server.csr -config openssl.cnf

openssl x509 -req -days 36500 -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt -extfile <(printf "subjectAltName=IP.1:127.0.0.1")
```

```
./bin/server --cert="tls/server.crt" --key="tls/server.key"
./bin/client --ca="tls/ca.crt" --addr="127.0.0.1:50051"
```