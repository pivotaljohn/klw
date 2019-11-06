#!/usr/bin/env bash
set -eux -o pipefail

CONTAINER_ID=$(docker run -d -p 8080:8080 myimage)
echo "Started container with id \"${CONTAINER_ID}\"."

curl localhost:8080/ids
curl localhost:8080/ids?count=42

echo "Stopping container..."
docker stop ${CONTAINER_ID}

