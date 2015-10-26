FROM debian

RUN apt-get update && apt-get install -y wget ca-certificates python-swiftclient && wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add - && apt-get update && apt-get install postgresql-9.5
ADD backup.sh .
RUN chmod +x backup.sh

CMD ./backup.sh
