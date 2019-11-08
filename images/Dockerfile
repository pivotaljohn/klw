# ==============
# Compile
# ---
FROM golang:1.13.4-alpine3.10 as compiled
LABEL maintainer="Pivotal John"

WORKDIR /go/src/

COPY go.* ./
COPY *.go ./

RUN go mod download
RUN go build -o ../bin/main .


# ========
# Assemble
# ---
FROM alpine:3.10
WORKDIR /root/

COPY --from=compiled /go/bin/main .

ENTRYPOINT ["./main"]
EXPOSE 8080
