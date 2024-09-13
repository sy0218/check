#!/usr/bin/bash

nohup hive --service hiveserver2 >> /hive/log/hiveserver2.log 2>&1 &
echo $! > /hive/hiveserver2.pid

