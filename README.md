#### docker容器服务
- 准备
  - 安装docker
    - windows：[windows-docker-desktop](https://www.docker.com/products/docker-desktop)
    - linux：https://www.runoob.com/docker/docker-tutorial.html
  - 安装docker-compose：https://www.runoob.com/docker/docker-compose.html
- 启动(对应服务目录,需在linux bash中执行)
  - sh文件
    ```
    ./start.sh
    ```
  - yml文件
    ```
    docker-compose up -d
    ```
- 注意
  - 数据持久化保存根目录：${HOME}/.docker/cust-data/
    