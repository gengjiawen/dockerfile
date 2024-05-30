#!/bin/sh
set -ex

time docker build -t gengjiawen/gitbook:2024.05.30 .
mkdir -p dist
docker run -it -v $PWD:/pwd -w /pwd gengjiawen/gitbook:2024.05.30 bash -c "cp -R /tmp/koajs-design-note/dist/* /pwd/dist"
