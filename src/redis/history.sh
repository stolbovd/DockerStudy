#!/usr/bin/env bash

docker pull redis
docker run --name myredis -d redis
docker run --rm -it --link myredis:redis redis /bin/bash
docker run --rm -it --volumes-from myredis -v $(pwd)/backup:/backup debian cp /data/dump.rdb /backup/
ls backup
docker stop myredis
docker rm -v myredis
