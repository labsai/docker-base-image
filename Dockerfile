FROM alpine:3.8

RUN mkdir /opt; cd /opt; \
    wget https://download.java.net/java/GA/jdk11/28/GPL/openjdk-11+28_linux-x64_bin.tar.gz \
    && tar -xzvf openjdk-11+28_linux-x64_bin.tar.gz \
    && chmod +x jdk-11 \
    && ln -s jdk-11 java \
    && rm -f openjdk-11+28_linux-x64_bin.tar.gz

ENV JAVA_HOME=/opt/java
ENV PATH="$PATH:$JAVA_HOME/bin"
