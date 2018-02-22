# kafka

FROM frekele/java

MAINTAINER Omar Ewedah <omar.ewedah@orange.com>

ENV ZOOKEEPER_CONNECT localhost:2181
ENV ADVERTISED_PORT 9092

RUN apt-get update
RUN apt-get install tar
RUN wget -q http://www-eu.apache.org/dist/kafka/0.11.0.2/kafka_2.12-0.11.0.2.tgz -P / 
RUN tar xfz kafka_2.11-0.10.2.1.tgz
RUN rm kafka_2.11-0.10.2.1.tgz

WORKDIR kafka_2.11-0.10.2.1/

COPY start1.sh /home/

EXPOSE 9092

CMD ["/bin/sh","/home/start1.sh"]
