FROM mysql:5.7.28
COPY mysql.cnf /etc/mysql/conf.d/mysql.cnf
RUN mkdir -p /var/lib/mysql-log/binlog \
    && chown -R mysql:mysql /var/lib/mysql-log