#!/bin/bash

if [ $# -lt 1 ]
then
    echo "$0 <dbscript>"
    exit -1
fi

exstat=0
export DB_SCRIPT=$1
export CONTAINER_NAME=quickdb-$RANDOM
docker compose -f docker-compose.yaml up wait-for-db && docker exec -it $CONTAINER_NAME psql -U postgres 

if [ $? -ne 0 ]
then
  docker logs $CONTAINER_NAME
  exstat=-1
fi
docker compose -f docker-compose.yaml down -v
exit $exstat
