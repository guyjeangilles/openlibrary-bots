#!/bin/bash

if [[ -z $1 ]]
  then
    echo "No dump file provided"
    exit 1
fi
if [[ -z $2 ]]
  then
    echo "No output file provided"
    exit 1
fi

OL_DUMP=$1
OUTPUT=$2

zgrep ^/type/edition $OL_DUMP | grep -v '"languages": \[{"key": "/languages' | grep '"language' | pv | gzip > $OUTPUT