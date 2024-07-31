#!/usr/bin/bash

a=$(echo $1 | awk -F ':' '{print $1}')
find_test=$(find /data/sy0218/spark/conf -type f -name $(echo $a | awk -F ':' '{print $1}'))
echo $find_test
