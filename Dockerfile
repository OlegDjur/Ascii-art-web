# стадия сборки
FROM golang:1.18-alpine3.16 AS builder

WORKDIR /app

COPY . .

RUN go build -o main ./cmd/main.go

FROM alpine:3.16
WORKDIR /app
COPY --from=builder /app .

RUN apk add bash

EXPOSE 8080

ENTRYPOINT ["/app/main"]
