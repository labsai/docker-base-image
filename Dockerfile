FROM adoptopenjdk/openjdk12:jre-12.0.1_12-alpine

MAINTAINER labsai

USER root

RUN apk update && \
        apk add --no-cache bash && \
        apk add --no-cache nano && \
        apk add --no-cache curl

RUN java -Xshare:dump;
