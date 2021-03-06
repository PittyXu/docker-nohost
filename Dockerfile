# whistle for Dockerfile
FROM alpine:latest

RUN set -ex && \
    apk update && \
    apk upgrade && \
    apk add --no-cache bash && \
    apk add --no-cache nodejs-npm && \
    npm i -g @nohost/server --registry=https://r.npm.taobao.org

ENTRYPOINT ["n2", "run"]