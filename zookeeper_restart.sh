#!/usr/bin/bash

# 인자 개수 확인
if [ "$#" -ne 1 ]; then
        echo "Usage: $0 <zookeeper working_dir>"
        exit 1
fi

zoo_server_file="/data/work/system_download.txt"
zoo_array=($(cat ${zoo_server_file} | grep zookeeper_ip | awk -F '|' '{for(i=2; i<=NF; i++) print $i}'))
len_zoo_array=${#zoo_array[@]}


zookeeper_working_dir=$1
zkServer_where=$(find ${zookeeper_working_dir} -type f -name zkServer.sh)

echo $zkServer_where
for ((i=0; i<len_zoo_array; i++));
do
        current_ip=${zoo_array[$i]}
        echo "------------zookeeper type ${current_ip}------------"
        ssh ${current_ip} "${zkServer_where} restart"
        echo "---------------------------------------------------"; echo"";
done
