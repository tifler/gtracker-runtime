#!/bin/bash

source config.sh

echo "create database GTRACKERDATADB;" | mysql -u ${MARIA_DB_USER} --password=${MARIA_DB_PASS} --protocol=tcp --host=${MARIA_DB_HOST} --port=${MARIA_DB_PORT}

echo "create database PASSCODEDB;" | mysql -u ${MARIA_DB_USER} --password=${MARIA_DB_PASS} --protocol=tcp --host=${MARIA_DB_HOST} --port=${MARIA_DB_PORT}

echo "create database APIKey;" | mysql -u ${MARIA_DB_USER} --password=${MARIA_DB_PASS} --protocol=tcp --host=${MARIA_DB_HOST} --port=${MARIA_DB_PORT}

echo "create database GTrackerAdmin;" | mysql -u ${MARIA_DB_USER} --password=${MARIA_DB_PASS} --protocol=tcp --host=${MARIA_DB_HOST} --port=${MARIA_DB_PORT}

echo "sql/GTracker.sql"
cat sql/GTracker.sql | mysql -u ${MARIA_DB_USER} --password=${MARIA_DB_PASS} --protocol=tcp --host=${MARIA_DB_HOST} --port=${MARIA_DB_PORT} --database=GTRACKERDATADB

echo "sql/Passcode.sql"
cat sql/Passcode.sql | mysql -u ${MARIA_DB_USER} --password=${MARIA_DB_PASS} --protocol=tcp --host=${MARIA_DB_HOST} --port=${MARIA_DB_PORT} --database=PASSCODEDB

echo "sql/APIKey.sql"
cat sql/APIKey.sql | mysql -u ${MARIA_DB_USER} --password=${MARIA_DB_PASS} --protocol=tcp --host=${MARIA_DB_HOST} --port=${MARIA_DB_PORT} --database=APIKey

echo "sql/Settings.sql"
cat sql/Settings.sql | mysql -u ${MARIA_DB_USER} --password=${MARIA_DB_PASS} --protocol=tcp --host=${MARIA_DB_HOST} --port=${MARIA_DB_PORT} --database=GTrackerAdmin
