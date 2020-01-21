#!/bin/bash

ROOT_UID=0

if [ "$UID" -eq "$ROOT_UID" ]
then
echo "You are root user."
else
echo "You are not a root user."
echo "You are $USER user."
fi
