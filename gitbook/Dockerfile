FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive


RUN apt update && \
    apt install -y \
        software-properties-common \ 
        git \
        vim \
        fish \
        sudo \
        wget \
        curl

RUN apt-get install -y locales locales-all
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN apt-get install -y npm && \
      npm i -g n yarn pnpm && \
      n latest

# pdf deps
RUN sudo apt-get update \
  && sudo apt-get install -y gnupg apt-transport-https \
  && curl -sSL https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add - \
  && echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list \
  && sudo apt update \
  && sudo apt-get install -y google-chrome-stable --no-install-recommends


ENV QTWEBENGINE_DISABLE_SANDBOX 1

RUN apt install libopengl0 libxcb-cursor0 -y
RUN sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
RUN apt-get install -y fonts-noto fonts-noto-cjk

RUN npm install -g gitbook-summary

ENV t 1
RUN npm i -g gengjiawen/gitbook-cli 

COPY ./test-e2e.sh /tmp
RUN cd /tmp && bash /tmp/test-e2e.sh
