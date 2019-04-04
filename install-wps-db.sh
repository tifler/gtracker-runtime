#!/bin/bash

source config.sh

echo "create database WPS;" | mysql -u ${MARIA_DB_USER} --password=${MARIA_DB_PASS} --protocol=tcp --host=${MARIA_DB_HOST} --port=${MARIA_DB_PORT}

echo "sql/WPS"
cat sql/WPS.sql | mysql -u ${MARIA_DB_USER} --password=${MARIA_DB_PASS} --protocol=tcp --host=${MARIA_DB_HOST} --port=${MARIA_DB_PORT} --database=WPS

