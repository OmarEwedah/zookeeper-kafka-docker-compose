# Zookeeper

FROM frekele/java

MAINTAINER Omar Ewedah <omar.ewedah@orange.com>

RUN apt-get update
RUN apt-get install tar 
RUN wget -q http://www-eu.apache.org/dist/kafka/0.11.0.2/kafka_2.12-0.11.0.2.tgz -P /
RUN tar xfz kafka_2.12-0.11.0.2.tgz 
RUN rm kafka_2.12-0.11.0.2.tgz 

WORKDIR kafka_2.12-0.11.0.2/

CMD ["bin/zookeeper-server-start.sh", "config/zookeeper.properties"]
EXPOSE 2181 2888 3888
