FROM postgres:9.6.16
RUN apt-get update && apt-get install -y vim && apt-get install -y netcat
COPY ./init-replica-server.sh /init-replica-server.sh
RUN chmod +x /init-replica-server.sh
ENTRYPOINT [“/init-replica-server.sh”]
