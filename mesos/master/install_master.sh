#!/bin/bash

apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF
DISTRO=$(lsb_release -is | tr '[:upper:]' '[:lower:]')
CODENAME=$(lsb_release -cs)
echo "deb http://repos.mesosphere.io/${DISTRO} ${CODENAME} main" | tee /etc/apt/sources.list.d/mesosphere.list

apt-add-repository ppa:webupd8team/java \
	&& apt-get -y --force-yes install oracle-java8-installer

apt-get -y update \
	&& apt-get -y --force-yes install mesosphere \
	&& apt-get -y --force-yes install mesos
