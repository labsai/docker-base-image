FROM alpine:3.8

MAINTAINER labsai

USER root

RUN wget https://download.java.net/java/early_access/alpine/28/binaries/openjdk-11+28_linux-x64-musl_bin.tar.gz && \
    tar -xzvf *.tar.gz && \
    chmod +x jdk-11 && \
    mv jdk-11 /usr/local/share && \
    rm /usr/local/share/jdk-11/lib/src.zip && \
    rm -rf *.tar.gz && \
    apk update && \
    apk add --no-cache bash

ENV JAVA_HOME=/usr/local/share/jdk-11
ENV PATH="$JAVA_HOME/bin:${PATH}"

RUN java -Xshare:dump;

COPY ld-musl-x86_64.pat /etc/ld-musl-x86_64.pat
