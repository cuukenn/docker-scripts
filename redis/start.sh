#!/bin/sh
# 脚本当前目录
CURRENT_DIR=$(cd $(dirname $0); pwd)
docker run \
           -p 6379:6379 \
           --env TZ=GMT+8 \
           -v ${CURRENT_DIR}/config/redis.conf:/etc/redis/redis.conf \
           -v ${HOME}/.docker/cust-data/redis/:/data/ \
           -h redis.middleware-service.local \
           --name redis \
           -d \
redis:7.0.4 \
redis-server /etc/redis/redis.conf