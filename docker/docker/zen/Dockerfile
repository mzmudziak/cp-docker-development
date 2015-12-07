FROM ubuntu:15.10
RUN apt-get update
RUN mkdir -p /user/src/app
WORKDIR /user/src/app/cp-local-development
ADD setup setup
RUN chmod +x setup/*.sh
RUN setup/01_install.sh
