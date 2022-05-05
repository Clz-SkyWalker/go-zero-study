#!/bin/sh

echo '222'
cd ../

echo '111'
exec goctl model mysql ddl -src .\service\product\model\product.sql -dir .\service\product\model -c

exec goctl api go -api .\service\product\api\product.api -dir .\service\product\api

exec goctl rpc protoc .\service\product\rpc\product.proto --go_out=.\service\product\rpc --go-grpc_out=.\service\product\rpc --zrpc_out=.\service\product\rpc
