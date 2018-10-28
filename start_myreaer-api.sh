#!/bin/sh

docker-compose stop
docker-compose rm
docker-compose build
docker-compose run --rm app rake db:create
docker-compose run --rm app rake db:migrate
docker-compose run --rm app rake db:seed
docker-compose up -d
