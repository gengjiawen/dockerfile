#!/bin/bash
set -ex
docker build -t ubuntu_test .
docker run -it -v "$(pwd)":/pwd -w /pwd ubuntu_test fish