#!/bin/bash

source config.sh

echo "create database GTRACKERDATADB;" | mysql -u ${MARIA_DB_USER} --password=${MARIA_DB_PASS} --protocol=tcp --host=${MARIA_DB_HOST} --port=${MARIA_DB_PORT}

echo "create database PASSCODEDB;" | mysql -u ${MARIA_DB_USER} --password=${MARIA_DB_PASS} --protocol=tcp --host=${MARIA_DB_HOST} --port=${MARIA_DB_PORT}

echo "create database APIKey;" | mysql -u ${MARIA_DB_USER} --password=${MARIA_DB_PASS} --protocol=tcp --host=${MARIA_DB_HOST} --port=${MARIA_DB_PORT}

echo "create database GTrackerAdmin;" | mysql -u ${MARIA_DB_USER} --password=${MARIA_DB_PASS} --protocol=tcp --host=${MARIA_DB_HOST} --port=${MARIA_DB_PORT}

cat sql/GTracker.sql | mysql -u ${MARIA_DB_USER} --password=${MARIA_DB_PASS} --protocol=tcp --host=${MARIA_DB_HOST} --port=${MARIA_DB_PORT} --database=GTRACKERDATADB

cat sql/Passcode.sql | mysql -u ${MARIA_DB_USER} --password=${MARIA_DB_PASS} --protocol=tcp --host=${MARIA_DB_HOST} --port=${MARIA_DB_PORT} --database=PASSCODEDB

cat sql/APIKey.sql | mysql -u ${MARIA_DB_USER} --password=${MARIA_DB_PASS} --protocol=tcp --host=${MARIA_DB_HOST} --port=${MARIA_DB_PORT} --database=APIKEYDB

cat sql/Settings.sql | mysql -u ${MARIA_DB_USER} --password=${MARIA_DB_PASS} --protocol=tcp --host=${MARIA_DB_HOST} --port=${MARIA_DB_PORT} --database=GTrackerAdmin
