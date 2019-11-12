FROM adoptopenjdk/openjdk12:x86_64-alpine-jre-12.0.2_10


MAINTAINER labsai

USER root

RUN apk update && \
        apk add --no-cache bash && \
        apk add --no-cache nano && \
        apk add --no-cache curl

RUN java -Xshare:dump;
