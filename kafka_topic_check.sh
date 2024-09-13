#!/usr/bin/bash

# 인자 개수 확인
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <kafka_broker [ip:port]>"
    exit 1
fi

kafka_bk_info=$1
kafka-topics.sh --list --bootstrap-server ${kafka_bk_info}
