# ELK

## ElasticSearch
要绑定挂载本地目录或文件，则必须有config、data、logs目录的读写权限

```
mkdir data
chmod g+rwx data
chgrp 0 data
```

  
> [参考资料](https://www.elastic.co/guide/en/elasticsearch/reference/7.17/docker.html)
> 
>

## 导出镜像
docker save elasticsearch:7.17.19 -o elasticsearch-7.17.19.tar
docker save kibana:7.17.19 -o kibana-7.17.19.tar
docker save logstash:7.17.19 -o logstash-7.17.19.tar



## 设置密码
https://blog.csdn.net/zccmp20/article/details/123800432
https://cloud.baidu.com/article/2812034
https://shackles.cn/index.php/archives/47/