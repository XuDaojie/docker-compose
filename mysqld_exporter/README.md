# mysqld-exporter
## 创建账号
- MySQL
    ```sql
    # MAX_USER_CONNECTIONS 需要5.7.8及以上版本
    CREATE USER 'exporter'@'%' IDENTIFIED BY '123456' WITH MAX_USER_CONNECTIONS 3;
    GRANT PROCESS, REPLICATION CLIENT, SELECT ON *.* TO 'exporter'@'%';
    ```
- MariaDB
    ```
    CREATE USER 'exporter'@'%' IDENTIFIED BY '123456' WITH MAX_USER_CONNECTIONS 3;
    GRANT PROCESS, REPLICATION CLIENT, REPLICATION SLAVE, SLAVE MONITOR, SELECT ON *.* TO 'exporter'@'%';
    ```