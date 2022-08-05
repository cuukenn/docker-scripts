# 报错退出
set -e
# 脚本当前目录
CURRENT_DIR=$(cd $(dirname $0); pwd)
docker run \
           -p 39000:9000 \
           -h sonarqube.middleware-service.local \
           -v ${HOME}/.docker/cust-data/sonarqube/data/:/opt/sonarqube/data/ \
           -v ${HOME}/.docker/cust-data/sonarqube/extensions/:/opt/sonarqube/extensions/ \
           -v ${HOME}/.docker/cust-data/sonarqube/logs/:/opt/sonarqube/logs/ \
           -v ${HOME}/.docker/cust-data/sonarqube/temp/:/opt/sonarqube/temp/ \
           --name sonarqube \
           -d \
sonarqube:8.9.9-developer