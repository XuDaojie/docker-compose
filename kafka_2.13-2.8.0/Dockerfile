FROM openjdk:11-jre-slim
# COPY mysql.cnf /etc/mysql/conf.d/mysql.cnf
# COPY init.sql /docker-entrypoint-initdb.d/a-init.sql
# RUN mkdir -p /var/lib/mysql-log/binlog \
#     && touch /var/lib/mysql-log/mysql-bin.index \
#     && chown -R mysql:mysql /var/lib/mysql-log
RUN apt update \
    && apt -y install wget procps vim \
    && wget -P / https://mirrors.bfsu.edu.cn/apache/kafka/2.8.0/kafka_2.13-2.8.0.tgz \
    && cd / \
    && tar -xzf kafka_2.13-2.8.0.tgz \
    && rm -rf kafka_2.13-2.8.0.tgz \
    && cd kafka_2.13-2.8.0 \ 
    && sed -i "s/zookeeper.connect=localhost:2181/zookeeper.connect=host.docker.internal:2181/g" config/server.properties
    # && sed -i 's/#listeners/listeners/g' config/server.properties
    # && sed -i 's/#listeners=PLAINTEXT:\/\/:9092/listeners=PLAINTEXT:\/\/:localhost:9092/g' config/server.properties
    # && sed -i 's/#advertised.listeners=PLAINTEXT:\/\/your.host.name:9092/advertised.listeners=PLAINTEXT:\/\/:127.0.0.1:9092/g' config/server.properties 
COPY config/server.properties /kafka_2.13-2.8.0/config/server.properties

# bin/kafka-server-start.sh config/server.properties
CMD ["/kafka_2.13-2.8.0/bin/kafka-server-start.sh", "/kafka_2.13-2.8.0/config/server.properties"]
# CMD ["/bin/bash"]