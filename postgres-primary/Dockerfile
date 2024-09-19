FROM postgres:9.6.16
RUN apt-get update && apt-get install -y vim && apt-get install -y netcat && apt-get install -y ssh
COPY init-db.sh /docker-entrypoint-initd.b/
RUN chmod +x /docker-entrypoint-initd.b/init-db.sh
COPY ./master-replication-setup.sh /master-replication-setup.sh
RUN chmod +x /master-replication-setup.sh
ENTRYPOINT [“/master-replication-setup.sh”]