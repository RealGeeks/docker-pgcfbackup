FROM ubuntu

RUN apt-get update && apt-get install -y wget ca-certificates python-swiftclient && echo "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main 9.5" >> /etc/apt/sources.list.d/postgresql.list && apt-get update && apt-get install -y --force-yes postgresql-9.5 && apt-get clean
ADD backup.sh .
RUN chmod +x backup.sh

CMD ./backup.sh
