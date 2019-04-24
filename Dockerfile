FROM adoptopenjdk/openjdk11:jre-11.0.3_7-alpine

MAINTAINER labsai

USER root

RUN apk update && \
        apk add --no-cache bash && \
        apk add --no-cache nano

RUN java -Xshare:dump;
