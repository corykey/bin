#!/bin/bash

# sudo nano /etc/mesos-master/ip
sudo cp /etc/mesos-master/ip /etc/mesos-master/hostname
sudo cp /etc/mesos/zk /etc/marathon/conf/master
sudo cp /etc/marathon/conf/master /etc/marathon/conf/zk
