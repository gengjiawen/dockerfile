FROM ubuntu

RUN apt update && apt install curl unzip -y

RUN curl https://dl.nssurge.com/snell/snell-server-v4.0.0-linux-amd64.zip -o /tmp/snell.zip \
    && unzip -d /usr/bin /tmp/snell.zip
 