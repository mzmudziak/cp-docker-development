FROM ubuntu:15.10
RUN apt-get -qq update
RUN mkdir -p /user/src/app
WORKDIR /user/src/app/
ADD setup setup
RUN chmod +x setup/*.sh
RUN setup/01_install.sh

# We can nt run step 2 
#  Postgres connection error: Error: connect ECONNREFUSED
# RUN setup/02_initialize.sh

WORKDIR /user/src/app/cp-local-development

