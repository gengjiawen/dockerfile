#!/bin/sh

time docker build -t gengjiawen/android .
mkdir dist
docker push gengjiawen/android