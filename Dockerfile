FROM adoptopenjdk/openjdk11:alpine-slim

MAINTAINER labsai

USER root

RUN apk update && \
        apk add --no-cache bash

RUN java -Xshare:dump;
