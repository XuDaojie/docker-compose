# 导出镜像
``` shell
docker save minio/minio:RELEASE.2023-07-21T21-12-44Z -o minio-RELEASE.2023-07-21T21-12-44Z.tar
docker save mysql:5.7.28 -o mysql-5.7.28.tar
docker save 需导出的镜像 -o 导出后的镜像名 
```