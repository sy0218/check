#!/usr/bin/bash

# 인자 개수 확인
if [ "$#" -ne 1 ]; then
        echo "Usage: $0 <kafka working_dir>"
        exit 1
fi

# system_download.txt 파일을 참조해 kafka 서버 목록 가져오기
server_file="/data/work/system_download.txt"
array=($(cat ${server_file} | grep kafka_ip | awk -F '|' '{for(i=2; i<=NF; i++) print $i}'))
len_array=${#array[@]}

# start 스크립트 위치
working_dir=$1
sh_name="kafka-server-stop.sh"
start_sh=$(find ${working_dir} -type f -name ${sh_name})

# kafka 브로커 서버 start
for ((i=0; i<len_array; i++));
do
	current_ip=${array[$i]}
	echo "------------kafka stop ${current_ip}------------"
	ssh ${current_ip} "${start_sh}"
	echo "------------kafka stop ${current_ip}------------"; echo"";        
done