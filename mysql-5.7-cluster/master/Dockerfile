FROM mysql:5.7.28
COPY mysql.cnf /etc/mysql/conf.d/mysql.cnf
COPY init.sql /docker-entrypoint-initdb.d/a-init.sql
RUN mkdir -p /var/lib/mysql-log/binlog \
    && touch /var/lib/mysql-log/mysql-bin.index \
    && chown -R mysql:mysql /var/lib/mysql-log