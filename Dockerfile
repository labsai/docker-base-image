FROM registry.redhat.io/ubi8/openjdk-11:1.3

MAINTAINER labsai

USER root

RUN yum update -y && \
    yum install -y nano
