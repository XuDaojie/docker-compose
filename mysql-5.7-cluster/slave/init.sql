-- 启动复制
CHANGE MASTER TO MASTER_HOST='host.docker.internal',
MASTER_USER='repl',
MASTER_PASSWORD='repl',
MASTER_PORT=3307,
MASTER_LOG_FILE='mysql-bin.000001',
MASTER_LOG_POS=0;

START SLAVE;