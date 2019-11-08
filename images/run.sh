#!/usr/bin/env bash
set -eux -o pipefail

CONTAINER_ID=$(docker run -d -p 8080:8080 goflake-server:latest)

curl localhost:8080/ids?count=42

docker stop ${CONTAINER_ID}

