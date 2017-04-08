#!/bin/bash


echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" | tee /etc/apt/sources.list.d/docker.list

apt-get -y update \
    && apt-get install -y --force-yes apt-transport-https ca-certificates

apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D \
    && apt-get -y update

apt-get -y install linux-image-extra-$(uname -r) linux-image-extra-virtual \
    && apt-get install -y --force-yes docker-engine

apt-get install -y --force-yes python-pip && pip install docker-compose

curl -L https://github.com/docker/machine/releases/download/v0.7.0/docker-machine-`uname -s`-`uname -m` > /usr/local/bin/docker-machine \
    && chmod +x /usr/local/bin/docker-machine
