FROM node:16-alpine

COPY [".", "."]

ENTRYPOINT echo '===[ busybox ]===' \
  && node index.mjs \
  && echo '===[ procps ]===' \
  && apk add --quiet procps \
  && node index.mjs
