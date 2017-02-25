FROM ubuntu:14.04
RUN apt-get update
RUN apt-get -y install curl wget vim git unzip gettext-base curl
RUN apt-get -y install python
RUN curl -O https://bootstrap.pypa.io/get-pip.py  && /usr/bin/python2.7 get-pip.py && pip install awscli

RUN curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest
RUN chmod +x /usr/local/bin/ecs-cli
ARG REGION
ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY
ARG CLUSTER_NAME

ENV REGION $REGION
ENV AWS_ACCESS_KEY_ID $AWS_ACCESS_KEY_ID
ENV AWS_SECRET_ACCESS_KEY $AWS_SECRET_ACCESS_KEY
ENV CLUSTER_NAME $CLUSTER_NAME

VOLUME /root/ecs-training
