# https://www.jianshu.com/p/a97d2efb23c5

# 默认账号密码
# admin@yapi.com
# ymfe.org

# 创建存储卷
docker volume create mongo-data-yapi

# 启动 MongoDB
docker run -d \
  --name mongo-yapi \
  -v mongo-data-yapi:/data/db \
  -e MONGO_INITDB_ROOT_USERNAME=yapi \
  -e MONGO_INITDB_ROOT_PASSWORD=yapi.com \
  mongo

# 下载镜像
docker pull registry.cn-hangzhou.aliyuncs.com/anoyi/yapi

# 初始化yapi-server
docker run -it --rm \
  --link mongo-yapi:mongo \
  --entrypoint npm \
  --workdir /yapi/vendors \
  -v $PWD/config.json:/yapi/config.json \
  registry.cn-hangzhou.aliyuncs.com/anoyi/yapi \
  run install-server

# 初始化yapi-web
docker run -d \
  --name yapi \
  --link mongo-yapi:mongo \
  --workdir /yapi/vendors \
  -p 3001:3000 \
  -v $PWD/config.json:/yapi/config.json \
  registry.cn-hangzhou.aliyuncs.com/anoyi/yapi \
  server/app.js