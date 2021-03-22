#!/bin/sh

time docker build -t gengjiawen/gitbook .
mkdir dist
docker run -it -v $PWD:/pwd -w /pwd gengjiawen/gitbook bash -c "cp -R /tmp/koajs-design-note/dist/* /pwd/dist"
