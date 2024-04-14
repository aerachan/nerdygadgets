#!/bin/sh

docker-compose down
docker volume create dbdata
docker-compose build
docker-compose up -d