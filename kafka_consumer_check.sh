#!/usr/bin/bash

# 인자 개수 확인
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <kafka_broker [ip:port]> <topic_name>"
    exit 1
fi

kafka_bk_info=$1
topic_name=$2
kafka-console-consumer.sh --bootstrap-server ${kafka_bk_info} --topic ${topic_name} --from-beginning
