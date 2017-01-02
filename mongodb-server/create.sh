#!/bin/bash

docker volume create --name mongodb-data

docker rm mongodb
docker create --name mongodb --restart unless-stopped -v mongodb-data:/data/db mongo:3
