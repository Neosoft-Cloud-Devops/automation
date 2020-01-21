#!/bin/bash

PIDFILE=/var/solr/solr-8983.pid

if [ "$PIDFILE" -gt "0" ]
then
echo "solr is running!!!"
else
/etc/init.d/solr start
fi
