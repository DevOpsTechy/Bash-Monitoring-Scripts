#!/bin/bash
hostname=$(hostname)
used=$(df / | grep / | awk '{ print $5}')
max=75%

  if [ ${used%?} -ge ${max%?} ]; then
	  echo "Disk usage is $used on $hostname"
  fi

