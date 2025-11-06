FROM ubuntu:25.10

# Configure pnpm global binary home and PATH
ENV PNPM_HOME=/root/.local/share/pnpm
ENV PATH=$PNPM_HOME:$PATH

RUN apt update \
  && apt install curl sudo git fish vim -y \
  && mkdir -p "$PNPM_HOME" \
  && curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n \
  && bash n lts \
  && npm i -g n npm pnpm yarn -f
