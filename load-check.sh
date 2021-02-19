#!/bin/bash
PATH=/sbin:/bin:/usr/sbin:/usr/bin
hostname=$(hostname)
LOAD=$(cat /proc/loadavg | awk '{print $1}')
TRIGGER=6
CPU_LOAD=$( printf "%.0f" $LOAD )
if [ "$CPU_LOAD" -ge "$TRIGGER" ]; then
	echo "Load is On $LOAD $hostname"
else
echo "Load is Normal"
fi

