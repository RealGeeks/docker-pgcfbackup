FROM debian

RUN apt-get update && apt-get install -y postgresql python-swiftclient
ADD backup.sh .
RUN chmod +x backup.sh

CMD ./backup.sh
