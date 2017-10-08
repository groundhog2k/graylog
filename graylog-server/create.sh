#!/bin/bash

docker volume create --name graylog2-journal

docker rm graylog2
docker create --name graylog2 --restart unless-stopped -v graylog2-journal:/usr/share/graylog/data/journal --link mongodb:mongo --link elasticsearch:elasticsearch -p 9000:9000 -p 12201-12209:12201-12209 -p 12211-12219:12211-12219/udp -e GRAYLOG_WEB_ENDPOINT_URI="http://127.0.0.1:9000/api" -e GRAYLOG_PASSWORD_SECRET=aSshqyn5jXrPznQlKJXuBaddIcG4XeK5oBvBp0Ts5PPOJY4QTK2Q0TlzrivUFI2Fthnk9EGIIVTH7AWwNE0dPcZfCZw51vPg -e GRAYLOG_ROOT_PASSWORD_SHA2=8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918 -e GRAYLOG_ELASTICSEARCH_HOSTS=http://elasticsearch:9200 graylog2/server:latest
docker cp GeoLite2-City.mmdb graylog2:/tmp
