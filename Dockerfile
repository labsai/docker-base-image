FROM registry.redhat.io/openjdk/openjdk-11-rhel8:1.0-13

MAINTAINER labsai

USER root

RUN yum update -y && \
    yum install -y nano
