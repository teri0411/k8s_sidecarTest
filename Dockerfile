FROM ubuntu:20.04
RUN apt-get update && apt-get install -y git
COPY ./contents-cloner.sh .
RUN chmod a+x ./contents-cloner.sh
WORKDIR /
CMD ["/contents-cloner"]