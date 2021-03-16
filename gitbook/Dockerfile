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

RUN apt-get install -y npm && \
      npm i -g n && \
      n latest
RUN npm i -g yarn

RUN npm i -g gitbook-cli 
RUN n 8
RUN npx gitbook fetch 3.2.3
RUN npm install -g gitbook-summary

RUN sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin