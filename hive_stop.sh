#!/usr/bin/bash

if [ -f /hive/hiveserver2.pid ]; then
    PID=$(cat /hive/hiveserver2.pid)
    kill $PID
    rm /hive/hiveserver2.pid
    echo "hiveserver2 (PID: $PID) 종료됨."
else
    echo "hiveserver2 PID 파일을 찾을 수 없습니다."
fi
