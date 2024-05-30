#!/bin/sh
set -ex

docker build -t gengjiawen/gitbook .
docker push gengjiawen/gitbook:2024.05.30
docker push gengjiawen/gitbook