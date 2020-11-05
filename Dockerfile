FROM adoptopenjdk/openjdk13:x86_64-alpine-jre-13.0.2_8

MAINTAINER labsai

USER root

RUN apk update && \
        apk add --no-cache bash && \
        apk add --no-cache nano && \
        apk add --no-cache curl

RUN java -Xshare:dump;
