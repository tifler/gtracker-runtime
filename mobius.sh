#!/bin/bash

source config.sh

DOCKERNAME=gtracker-mobius-${HOSTUSER}
DOCKER=gtracker-mobius:1.0

case "$1" in
    start)
        echo -n "Starting docker: "
        docker \
            run \
            -d \
            --rm \
            --name ${DOCKERNAME} \
            --env MOBIUS_DB_PASS=${MARIA_DB_PASS} \
            --env MOBIUS_DB_PORT=${MARIA_DB_PORT} \
            --env MOBIUS_DB_HOST=${MARIA_DB_HOST} \
            --publish ${MOBIUS_HTTP_PORT}:7579 \
            --publish ${MOBIUS_MQTT_PORT}:1883 \
            ${DOCKER} bash /bin/start-mobius.sh
    ;;
    start-it)
        echo -n "Starting docker: "
        docker \
            run \
            -it \
            --rm \
            --name ${DOCKERNAME} \
            --env MOBIUS_DB_PASS=${MARIA_DB_PASS} \
            --env MOBIUS_DB_PORT=${MARIA_DB_PORT} \
            --env MOBIUS_DB_HOST=${MARIA_DB_HOST} \
            --publish ${MOBIUS_HTTP_PORT}:7579 \
            --publish ${MOBIUS_MQTT_PORT}:1883 \
            ${DOCKER} bash /bin/start-mobius.sh
    ;;
    bash)
        echo -n "Starting docker: "
        docker \
            run -it \
            --rm \
            --name ${DOCKERNAME} \
            --env MOBIUS_DB_PASS=${MARIA_DB_PASS} \
            --env MOBIUS_DB_PORT=${MARIA_DB_PORT} \
            --env MOBIUS_DB_HOST=${MARIA_DB_HOST} \
            --publish ${MOBIUS_HTTP_PORT}:7579 \
            --publish ${MOBIUS_MQTT_PORT}:1883 \
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
