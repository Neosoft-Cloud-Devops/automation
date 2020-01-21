#!/bin/sh
set -e
RAM=`ps -o rss --no-headers -p $(cat /var/solr/solr-8983.pid) || true`
if [ "$RAM" ]; then
    # It's not running
    sudo systemctl start solr
elif [ "$RAM" -gt 1048576 ]; then
    # It's using too much memory
    sudo systemctl restart solr
fi
