#!/bin/bash
UP=$(netstat -tulpn | grep :80 | grep nginx | wc -l);
if [ "$UP" -ne 1 ];
then
        sudo service nginx start
else
        echo "Webserver Is UP";
fi


