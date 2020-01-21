#!/bin/bash

SERVERLIST=("webserver1" "webserver2" "webserver3")
COUNT=0

for INDEX in ${SERVERLIST[@]};do
  echo "Processing Server: ${SERVERLIST[COUNT]}"
  COUNT="`expr $COUNT + 1`"
done


