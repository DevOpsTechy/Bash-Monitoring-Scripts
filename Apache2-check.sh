#!/bin/bash
UP=$(netstat -tulpn | grep :80 | grep apache2 | wc -l);
if [ "$UP" -ne 1 ];
then
        sudo service apache2 start
else
        echo "Webserver Is UP";
fi

