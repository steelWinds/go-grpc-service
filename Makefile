APP_PATH=./cmd/app/app.go
PROTO_PATH=./internal/app/pokemon/proto/pokemon.proto

run-app:
	go run $(APP_PATH)

re-generate-protobuf:
	protoc --go_out=. --go_opt=paths=source_relative \
	--go-grpc_out=. --go-grpc_opt=paths=source_relative,require_unimplemented_servers=false $(PROTO_PATH)

