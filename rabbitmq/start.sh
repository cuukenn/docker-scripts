#!/bin/sh
# 脚本当前目录
CURRENT_DIR=$(cd $(dirname $0); pwd)
docker run \
           -p 5672:5672 \
           -p 15672:15672 \
           --env RABBITMQ_DEFAULT_USER=rabbitmq \
           --env RABBITMQ_DEFAULT_PASS=rabbitmq \
           -h rabbitmq.middleware-service.local \
           --name rabbitmq \
           -d \
rabbitmq:3.9.22-management-alpine