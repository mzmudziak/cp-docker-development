FROM ubuntu:15.10

RUN apt-get -qq update

RUN mkdir -p /user/src/app/
WORKDIR /user/src/app/

ADD setup setup
RUN chmod +x setup/*.sh

VOLUME /user/src/app/cp-local-development
