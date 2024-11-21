#!/bin/bash

if [ $# -lt 1 ]
then
    echo "$0 <dbscript>"
    exit -1
fi

export DB_SCRIPT=$1
export CONTAINER_NAME=quickdb-$RANDOM
echo "starting shell"
# docker ps
docker compose -f docker-compose.yaml up shell &&
# docker logs $CONTAINER_NAME
echo "starting postgres" &&
# docker ps
docker exec -it $CONTAINER_NAME psql -U postgres
docker compose -f docker-compose.yaml down -v
