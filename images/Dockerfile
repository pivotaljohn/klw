# Assemble image
FROM golang:1.13.4-alpine3.10 as compiled
LABEL maintainer="Pivotal John"
WORKDIR /go/src
COPY goflake-server/* ./
RUN go mod download
RUN go build -o ../bin/main .

# Runtime image
FROM alpine:3.10
WORKDIR /root/
COPY --from=compiled /go/bin/main .
EXPOSE 8080
CMD ["./main"]
