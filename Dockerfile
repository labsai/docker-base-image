FROM adoptopenjdk/openjdk11:alpine-slim

MAINTAINER labsai

USER root

RUN java -Xshare:dump;
