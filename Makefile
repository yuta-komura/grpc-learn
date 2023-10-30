# protocコマンドで, コードを生成する.
gen:
	protoc --go_out=pkg/grpc --go_opt=paths=source_relative --go-grpc_out=pkg/grpc --go-grpc_opt=paths=source_relative api/hello.proto
# grpcurlコマンドで, サーバー内に実装されているサービス一覧の確認.
server-list:
	grpcurl -plaintext localhost:8080 list
# grpcurlコマンドで, Helloメソッドにリクエストを送る.
hello-request:
	grpcurl -plaintext -d '{\"name\": \"komura\"}' localhost:8080 myapp.GreetingService/Hello
