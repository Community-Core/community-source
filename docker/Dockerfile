FROM debian:stretch
LABEL maintainer="Community Developers <dev@community.org>"
LABEL description="Dockerised CommunityCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
