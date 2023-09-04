# 使用官方 Ubuntu 镜像作为基础镜像
FROM ubuntu:latest

# 更新软件包信息并安装所需的软件包
RUN apt-get update && \
    apt-get install -y wget tar unzip nginx supervisor qrencode net-tools

# 创建一个工作目录
WORKDIR /app

# 将应用程序文件复制到容器中
COPY . /app

# 复制 start.sh 文件到容器中
COPY start.sh /app/start.sh

# 赋予 start.sh 可执行权限
RUN chmod +x /app/start.sh

# 启动应用程序
CMD ["/app/start.sh"]
