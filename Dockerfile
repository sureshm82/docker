FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    curl \
    iproute2 \
    sshfs \
    unzip \
    less \
    groff

RUN curl -LO https://dl.k8s.io/release/v1.23.6/bin/linux/amd64/kubectl

RUN curl -LO https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip && \
    unzip awscli-exe-linux-x86_64.zip && \
    ./aws/install

ENV PATH="/kubectl:${PATH}"