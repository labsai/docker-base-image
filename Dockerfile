FROM alpine:3.8

MAINTAINER labsai

USER root

RUN wget https://download.java.net/java/GA/jdk11/28/GPL/openjdk-11+28_linux-x64_bin.tar.gz

RUN tar -xzvf *.tar.gz

RUN chmod +x jdk-11

RUN mv jdk-11 /usr/local/share

ENV JAVA_HOME=/usr/local/share/jdk-11

ENV PATH="$JAVA_HOME/bin:${PATH}"

RUN rm -rf *.tar.gz

COPY ld-musl-x86_64.path /etc/ld-musl-x86_64.pat
