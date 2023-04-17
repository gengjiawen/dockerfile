#!/bin/bash
set -ex
docker build -t ubuntu_test .
docker run -it ubuntu_test fish