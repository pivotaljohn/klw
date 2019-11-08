#!/usr/bin/env bash

set -e

git submodule update --init
docker build -f Dockerfile -t goflake-server:latest goflake-server

