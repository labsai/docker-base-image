FROM alpine:3.8

CMD ["/bin/sh"]

MAINTAINER labsai

USER root

RUN wget https://download.java.net/java/GA/jdk11/28/GPL/openjdk-11+28_linux-x64_bin.tar.gz \
    && tar -xzvf openjdk-11+28_linux-x64_bin.tar.gz \
    && rm -f openjdk-11+28_linux-x64_bin.tar.gz \
    && chmod +x jdk-11 \
    && mv jdk-11 /usr/local/share \

ENV JAVA_HOME=/usr/local/share/jdk-11
ENV PATH="$PATH:$JAVA_HOME/bin"
