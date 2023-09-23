
# docker-compose

本机软件docker-compose安装配置

# docker 镜像地址
{
  "registry-mirrors": [
    "https://xxxxx.mirror.aliyuncs.com",
    "https://hub-mirror.c.163.com",
    "https://mirror.baidubce.com"
  ]
}

# 导出镜像
docker save minio/minio:RELEASE.2023-07-21T21-12-44Z -o minio-RELEASE.2023-07-21T21-12-44Z.tar
docker save mysql:5.7.28 -o mysql-5.7.28.tar

# issues
docker容器启动时报
```
WARNING: IPv4 forwarding is disabled. Networking will not work.
```
本机访问正常，但局域网无法访问


尝试修改后/etc/sysctl.conf文件
启用转发功能
```
# 1代表启用
net.ipv4.ip_forward=1
```
然后使用以下命令重启服务器网络
systemctl restart network

https://blog.51cto.com/u_16099287/6380106
