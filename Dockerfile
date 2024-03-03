FROM alpine:3.19

RUN apk add --no-cache \
  bash \
  ddclient

COPY ddclientd .

CMD ["/ddclientd"]
