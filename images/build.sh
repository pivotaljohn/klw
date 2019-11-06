#!/usr/bin/env bash

set -e

git submodule update --init
docker build -t myimage:latest .

echo "If all that was successful, you can launch the image with:"
echo "$ docker run -d -p 8080:8080 myimage"
