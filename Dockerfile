FROM adoptopenjdk/openjdk11:alpine-slim

MAINTAINER labsai

USER root

RUN apk update && \
        apk add --no-cache bash && \
        apk add --no-cache nano

RUN java -Xshare:dump;
