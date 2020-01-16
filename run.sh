
docker kill openresty-json
docker rm openresty-json
docker build -t openresty-json .

echo "Build finished"

docker run --rm -d -p 8009:80 -e "SITE_HOSTNAME=demo.tv" --name openresty-json openresty-json:latest

http localhost:8009/
http localhost:8009/env-txt
