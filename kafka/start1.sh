#!bin/bash

sed -i "s|zookeeper.connect=localhost:2181|#|g" config/server.properties 

echo "zookeeper.connect=$ZOOKEEPER_CONNECT" >> config/server.properties

sed -i "s|broker.id=0|# |g" config/server.properties
echo "broker.id=$(ifconfig eth0 | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' |cut -d . -f 4)" >> config/server.properties
sed -i "s|#advertised.listeners=PLAINTEXT://your.host.name:9092|advertised.listeners=PLAINTEXT://$(curl -s ifconfig.co):$ADVERTISED_PORT |g" config/server.properties


bin/kafka-server-start.sh config/server.properties
