FROM eclipse-temurin:17.0.2_8-jre-alpine

MAINTAINER labsai

USER root

RUN apk update && \
        apk add --no-cache bash && \
        apk add --no-cache nano && \
        apk add --no-cache curl

RUN java -Xshare:dump;
