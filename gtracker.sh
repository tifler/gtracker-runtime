#!/bin/bash

source config.sh

DOCKERNAME=gtracker-server-${HOSTUSER}
DOCKER=gtracker-server:1.0

case "$1" in
    start)
        echo -n "Starting docker: "
        docker \
            run \
            -d \
            --rm \
            --network host \
            --name ${DOCKERNAME} \
            --env MOBIUS_HOST=${MOBIUS_HOST} \
            --env MOBIUS_HTTP_PORT=${MOBIUS_HTTP_PORT} \
            --env MOBIUS_NOTI_PORT=${MOBIUS_NOTI_PORT} \
            --env GTRACKER_DB_USER=${GTRACKER_DB_USER} \
            --env GTRACKER_DB_PASS=${GTRACKER_DB_PASS} \
            --env GTRACKER_DB_PORT=${GTRACKER_DB_PORT} \
            --env GTRACKER_DB_HOST=${GTRACKER_DB_HOST} \
            --env GTRACKER_SERVER_PORT=${GTRACKER_SERVER_PORT} \
            --env GEOLOCATION_API_KEY=${GEOLOCATION_API_KEY} \
            ${DOCKER} node server.js
    ;;
    start-it)
        echo -n "Starting docker: "
        docker \
            run \
            -it \
            --rm \
            --network host \
            --name ${DOCKERNAME} \
            --env MOBIUS_HOST=${MOBIUS_HOST} \
            --env MOBIUS_HTTP_PORT=${MOBIUS_HTTP_PORT} \
            --env MOBIUS_NOTI_PORT=${MOBIUS_NOTI_PORT} \
            --env GTRACKER_DB_USER=${GTRACKER_DB_USER} \
            --env GTRACKER_DB_PASS=${GTRACKER_DB_PASS} \
            --env GTRACKER_DB_PORT=${GTRACKER_DB_PORT} \
            --env GTRACKER_DB_HOST=${GTRACKER_DB_HOST} \
            --env GTRACKER_SERVER_PORT=${GTRACKER_SERVER_PORT} \
            --env GEOLOCATION_API_KEY=${GEOLOCATION_API_KEY} \
            ${DOCKER} node server.js
    ;;
    bash)
        echo -n "Starting docker: "
        docker \
            run -it \
            --rm \
            --network host \
            --name ${DOCKERNAME} \
            --env MOBIUS_HOST=${MOBIUS_HOST} \
            --env MOBIUS_HTTP_PORT=${MOBIUS_HTTP_PORT} \
            --env MOBIUS_NOTI_PORT=${MOBIUS_NOTI_PORT} \
            --env GTRACKER_DB_USER=${GTRACKER_DB_USER} \
            --env GTRACKER_DB_PASS=${GTRACKER_DB_PASS} \
            --env GTRACKER_DB_PORT=${GTRACKER_DB_PORT} \
            --env GTRACKER_DB_HOST=${GTRACKER_DB_HOST} \
            --env GTRACKER_SERVER_PORT=${GTRACKER_SERVER_PORT} \
            --env GEOLOCATION_API_KEY=${GEOLOCATION_API_KEY} \
            ${DOCKER} bash
    ;;
    stop)
        echo -n "Stopping docker: "
        docker stop ${DOCKERNAME}
        echo -n "Removing docker: "
        docker rm ${DOCKERNAME}
    ;;
    *)
        echo "Usage: $0 {start|stop}"
        exit 1
    ;;
esac

exit 0
