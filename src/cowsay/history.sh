#!/usr/bin/env bash

docker build -t test/cowsay-dockerfile .
docker run test/cowsay-dockerfile /usr/games/cowsay "Moo"
docker info
docker ps
docker ps -a
docker rm lucid_goldstine
docker build -t test/cowsay-dockerfile .
docker run test/cowsay-dockerfile "Moo"
docker run test/cowsay-dockerfile
chmod +x entrypoint.sh
ls -la
docker build -t test/cowsay-dockerfile .
docker run test/cowsay-dockerfile
docker run test/cowsay-dockerfile Hello Moo
#curl -u stolbovd:c635fdfc-63fc-41ca-ac2c-13f13c4f61ee https://cloud.docker.com/api/app/v1/service/
docker login
docker push stolbovd/cowsay
