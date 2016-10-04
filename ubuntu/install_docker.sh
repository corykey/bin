#!/bin/bash


echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" | tee /etc/apt/sources.list.d/docker.list

apt-get -y update \
    && apt-get -y install apt-transport-https ca-certificates

apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D \
    && apt-get -y update

apt-get -y install linux-image-extra-$(uname -r) linux-image-extra-virtual \
    && apt-get -y install docker-engine
