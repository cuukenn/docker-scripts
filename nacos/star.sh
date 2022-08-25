#!/bin/sh
CURRENT_DIR=$(cd $(dirname $0); pwd)
docker run \
           -p 8848:8848 \
           -p 9848:9848 \
           --env JVM_XMS=256m \
           --env JVM_XMX=256m \
           --env MODE=standalone \
           --name nacos \
           -d \
nacos/nacos-server:v2.1.1
