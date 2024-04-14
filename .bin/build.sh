#!/bin/sh

docker-compose down -v
docker volume create dbdata
docker-compose build
docker-compose up -d
