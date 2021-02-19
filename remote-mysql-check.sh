#!/bin/bash
nc -v -z localhost 3306 > /root/mysqlcheck 2>&1

UP=$(cat /root/mysqlcheck | grep succeeded | wc -l)


if [ "$UP" -ne 1 ];
then
echo "Mysql Is UnReachable"
else
echo "MySQL is Reachable"
fi

