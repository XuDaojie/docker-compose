需要将demo.env修改为.env

## 错误
官方使用host模式，但尝试后发现会报错
``` java
easytier    | 2026-04-14 00:43:48: [00305a2e-9a70-4af2-a6ed-eda1129400cb] connect to peer error. dst: tcp://35.xxx.xxx.91:11010, ip_version: V4, err: Err(Timeout(Elapsed(())))
easytier    | 2026-04-14 00:43:48: [00305a2e-9a70-4af2-a6ed-eda1129400cb] connect to peer error. dst: tcp://easytier.xxxx.com:11010, ip_version: V4, err: Err(Timeout(Elapsed(())))```

尝试配置静态路由，可以ping通ip，但curl依然不同