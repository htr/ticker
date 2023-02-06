FROM golang:1.20.0-alpine3.17 as builder

WORKDIR /src
ADD ticker.go /src

ENV CGO_ENABLED=0
RUN go build ticker.go

FROM alpine:3.17

COPY --from=builder /src/ticker /ticker

ENTRYPOINT /ticker

