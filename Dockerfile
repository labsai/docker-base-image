FROM registry.redhat.io/openjdk/openjdk-11-rhel8:1.2-1

MAINTAINER labsai

USER root

RUN yum update -y && \
    yum install -y nano
