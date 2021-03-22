FROM ubuntu:20.04

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
      npm i -g n yarn && \
      n latest

# pdf deps
RUN apt-get update \
  && apt-get install -y gnupg apt-transport-https \
  && curl -sSL https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
  && echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list \
  && apt-get update && apt-get install -y google-chrome-stable --no-install-recommends

ENV QTWEBENGINE_DISABLE_SANDBOX 1

RUN sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

RUN npm i -g gengjiawen/gitbook-cli 
RUN npx gitbook fetch 3.2.3
RUN npm install -g gitbook-summary

RUN apt-get install -y fonts-noto fonts-noto-cjk
COPY ./test-e2e.sh /tmp
RUN cd /tmp && bash /tmp/test-e2e.sh