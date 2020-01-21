#!/bin/bash


shopt -s expand_aliases

alias TODAY="date"
alias UFILES="find . -user webwerks"

TODAYSDATE=`date`
USERFILES=`find . -user webwerks`


echo "Todays's date is: $TODAYSDATE"
echo "All files owned by user: $USERFILES"

A=`TODAY`
B=`UFILES`

echo "With Alias, TODAY is: $A"
echo "With Alias, UFILE is: $B"
