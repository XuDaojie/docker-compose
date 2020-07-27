
1. 
``` bash
$ docker-compose up -d
```
2. 以单机模式进入master节点

```js
rs.initiate();
rs.add('172.28.0.3:27017');
// 设为仲裁节点、只参与投票
rs.add('172.28.0.4:27017', true);
// rs.add('172.27.0.4:27017');

rs.conf();
rs.status();
```

```js
rs.initiate({
    _id : "rs0",
    members: [
        {_id:0, host:"172.28.0.2:27017", priority:2},
        {_id:1, host:"172.28.0.3:27017", priority:1},
        {_id:2, host:"172.28.0.4:27017", arbiterOnly:true}
    ]
});

rs.initiate({
    _id : "rs0",
    members: [
        {_id:0, host:"127.0.0.1:30000", priority:2},
        {_id:1, host:"127.0.0.1:30001", priority:1},
        {_id:2, host:"127.0.0.1:30002", arbiterOnly:true}
    ]
});

rs.initiate({
    _id : "rs0",
    members: [
        {_id:0, host:"host.docker.internal:30000", priority:2},
        {_id:1, host:"host.docker.internal:30001", priority:1},
        {_id:2, host:"host.docker.internal:30002", arbiterOnly:true}
    ]
});

```

执行完后再master节点添加数据，数据可以成功同步至从节点，但是当使用复制模式登陆时，登陆失败



https://blog.csdn.net/biao0309/article/details/87641272
https://www.jianshu.com/p/c3811263fd3a
https://www.cnblogs.com/swordfall/p/10841418.html
https://blog.yowko.com/docker-compose-mongodb-replica-set/
docker-compose 执行命令有多重方式，command: healthcheck: healthcheck