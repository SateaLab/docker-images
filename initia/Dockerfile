FROM ubuntu:22.04

RUN apt-get update -y && \
    apt-get install wget curl build-essential make gcc jq git lz4 -y && \
    rm -rf /usr/local/go

RUN curl -L https://dl.google.com/go/go1.22.1.linux-amd64.tar.gz | tar -xzf - -C /usr/local

ENV GOPATH $HOME/go
ENV PATH $PATH:/usr/local/go/bin:$HOME/go/bin

RUN git clone https://github.com/initia-labs/initia.git && \
    cd initia && \
    git checkout v0.2.14 && \
    make install

ENV moniker test
ENV chainId initiation-1

COPY ./init.sh ./init.sh

RUN chmod +x ./init.sh
# RUN sh init.sh

ENTRYPOINT ["sh","init.sh"]