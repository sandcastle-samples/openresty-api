FROM openresty/openresty:alpine-fat

# RUN /usr/local/openresty/luajit/bin/luarocks install lua-resty-http

COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

ENV SITE_HOSTNAME=hello.tv
