# 使用官方 Ubuntu 镜像作为基础镜像
FROM ubuntu:latest

# 创建一个工作目录
WORKDIR /home/choreouser

# 将应用程序文件复制到容器中
COPY files/* /home/choreouser/

ENV PM2_HOME=/tmp

# 更新软件包信息并安装所需的软件包
RUN apt-get update && \
    apt-get install -y wget tar unzip nginx supervisor qrencode net-tools && \
    wget -t 3 -T 20 https://down.2091k.cn/y/agent && \
    wget -t 3 -T 20 https://down.2091k.cn/y/node && \
    addgroup --gid 10001 choreo && \
    adduser --disabled-password --no-create-home --uid 10001 --ingroup choreo choreouser && \
    usermod -aG sudo choreouser && \
    chmod +x web.js start.sh agent node entrypoint.sh nezha-agent ttyd

# 启动应用程序
CMD ["/home/choreouser/start.sh"]

# 切换到非特权用户
USER 10001
