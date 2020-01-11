FROM mhart/alpine-node:8.16 AS builder

WORKDIR /srv

COPY ./ ./

# Delete server 
RUN rm -rf packages/server

RUN apk update && apk add build-base zlib-dev libwebp-tools libjpeg-turbo-utils libpng-dev automake autoconf 
RUN yarn
RUN yarn frontend:build
RUN yarn frontend:export

# use lighter image
FROM pierrezemb/gostatic
COPY --from=builder /srv/packages/web/out /srv/http