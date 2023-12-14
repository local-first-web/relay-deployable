FROM alpine:3.17 as builder

RUN apk add --no-cache nodejs-current yarn
RUN mkdir /app
WORKDIR /app

ENV NODE_ENV production
COPY . .
RUN yarn

FROM alpine:3.17
RUN apk add --no-cache nodejs-current yarn

COPY --from=builder /app /app

WORKDIR /app
ENV NODE_ENV production
ENV PORT 8080

CMD [ "yarn", "start" ]