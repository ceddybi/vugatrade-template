FROM mhart/alpine-node:10 AS builder

WORKDIR /srv

COPY ./ ./

# Delete web
RUN rm -rf packages/web
 
RUN yarn
RUN yarn backend:build

# use lighter image
FROM mhart/alpine-node:base-10
COPY --from=builder /srv .
ENV NODE_ENV=production
EXPOSE 3000
CMD ["node", "packages/server/build/server.js"]