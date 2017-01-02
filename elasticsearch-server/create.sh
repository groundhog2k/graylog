#!/bin/bash

docker volume create --name elasticsearch-data

docker rm elasticsearch
docker create --name elasticsearch --restart unless-stopped -v elasticsearch-data:/usr/share/elasticsearch/data -e ES_HEAP_SIZE=1G elasticsearch:2 -Des.cluster.name="graylog"
