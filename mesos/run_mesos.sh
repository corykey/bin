#!/bin/bash

if [ $1 == "start" ] || [ $1 == "stop" ]
then
  echo "Services: ${1}"
  service marathon $1
  service mesos-master $1
  service zookeeper $1

else
  echo "provide start or stop command!"

fi
