FROM golang:1.15.8-alpine AS builder

WORKDIR /app

COPY src .

RUN go build -ldflags "-s -w" main.go 

CMD ["./main"]