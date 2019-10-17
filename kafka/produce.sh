#!/bin/bash
topic=$1
echo "producing to $topic"

. env.sh

docker run -it swr.cn-north-4.myhuaweicloud.com/gaojx/kafka:2.12-2.2.0 /opt/kafka/bin/kafka-console-producer.sh \
    --topic=$topic \
    --broker-list=$KFK_HOST:9092