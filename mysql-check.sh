#!/bin/bash

mysql_daemon='mysqld'
pgrep='/usr/bin/pgrep'

$pgrep $mysql_daemon > /dev/null
if [ $? -ne 0 ]; then
systemctl start mysql
fi

