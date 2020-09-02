#!/bin/bash
FIRSTNAME=$1
MIDDLENAME=$2
LASTNAME=$3
SHOW=$4
if [ "$SHOW" = "true" ];then
echo "Hi $FIRSTNAME  $MIDDLENAME $LASTNAME"
else
echo "If you want to see your name,Please mark Show Option"
fi
