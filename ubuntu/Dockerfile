FROM ubuntu:22.04

RUN apt-get update
RUN apt-get -y install \
    ca-certificates \
    curl \
    gnupg \
    expect \
    screen \
    jq \
    wget \
    unzip \
    zip

ENTRYPOINT "./start.sh"