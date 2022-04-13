#!/bin/sh
set -e

time docker build -t gengjiawen/android .
docker push gengjiawen/android