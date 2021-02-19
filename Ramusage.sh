#!/bin/bash

hostname=$(hostname)

freeram=$(free -mt | grep "Mem:" | awk '{print $4}')

if [ ${freeram} -le 200 ]; then

echo "Only $freeram MB RAM available on $hostname"
  fi


