FROM ubuntu:20.04
RUN apt-get update && apt-get install -y pgpool2 \ && apt-get install -y vim && apt-get install -y postgresql-client && apt-get install -y netcat
COPY wait-for-db.sh /wait-for-db.sh
RUN chmod +x /wait-for-db.sh
ENTRYPOINT [“/wait-for-db.sh”]
CMD [“pgpool”, “-n”]