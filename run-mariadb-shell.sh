#!/bin/bash

source config.sh

mysql -u ${MARIA_DB_USER} --password=${MARIA_DB_PASS} --host=${MARIA_DB_HOST} --port=${MARIA_DB_PORT}
