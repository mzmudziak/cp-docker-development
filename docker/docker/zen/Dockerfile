FROM ubuntu:15.10

# postgres access
#   http://docs.docker.com/engine/reference/builder/#env
#   https://github.com/niccokunzmann/cp-local-development/blob/master/init.js#L74
ENV POSTGRES_USERNAME=platform
ENV POSTGRES_PASSWORD=QdYx3D5y
ENV POSTGRES_HOST=postgres-zen

RUN apt-get -qq update

RUN mkdir -p /user/src/app/
WORKDIR /user/src/app/

ADD setup setup
RUN chmod +x setup/*.sh

VOLUME /user/src/app/cp-local-development
