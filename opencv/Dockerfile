# FROM docker.io/ubuntu:20.04
FROM docker.io/bitnami/python:3.8

WORKDIR /arjunr

ENV DEBIAN_FRONTEND noninteractive

ADD requirements.txt .

ADD open_cv_4.6.0.sh .

RUN chmod +x open_cv_4.6.0.sh

RUN ./open_cv_4.6.0.sh
