FROM golang:1.18 AS builder
WORKDIR /build
#RUN go env -w GO111MODULE=on
COPY go.mod go.sum ./
#RUN go mod download
COPY . .
RUN CGO_ENABLED=0 go build -tags netgo main.go

# Runtime image


FROM alpine
RUN apk add --update curl bash net-tools libc6-compat ca-certificates && rm -rf /var/cache/apk/*
COPY --from=builder /build/main /cloud-torrent-server
