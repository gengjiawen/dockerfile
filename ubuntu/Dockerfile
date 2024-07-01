FROM ubuntu:24.10

RUN apt update && apt install curl sudo fish -y && curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n && bash n lts && npm i -g n npm pnpm yarn -f
