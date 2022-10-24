#!/bin/sh
set -e

time docker build -t gengjiawen/android .
docker run -it --rm gengjiawen/android bash -c "npx envinfo -y"
docker push gengjiawen/android