# 报错退出
set -e
# 脚本当前目录
CURRENT_DIR=$(cd $(dirname $0); pwd)
docker run \
           -p 3306:3306 \
           --env MYSQL_ROOT_PASSWORD=123456 \
           --env RABBITMQ_DEFAULT_PASS=rabbitmq \
           -v ${HOME}/.docker/cust-data/mysql/:/var/lib/mysql/ \
           -h mmysql.middleware-service.local \
           --name mysql \
           -d \
mysql:5.7 \
mysqld --innodb-buffer-pool-size=80M \
       --character-set-server=utf8mb4 \
       --collation-server=utf8mb4_unicode_ci \
       --default-time-zone=+8:00 \
       --lower-case-table-names=1
