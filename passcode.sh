#!/bin/bash

source config.sh

if [ $# -ne 3 ]; then
    echo "Usage: $0 <serial> <passcode>"
    exit 1
fi

# GT012345ACC1 passcode
serial=$1
passcode=$2

echo "Add $serial:$passcode"
mysql --host=${MARIA_DB_HOST} --port=${MARIA_DB_PORT} -u ${MARIA_DB_USER} --password=${MARIA_DB_PASS} --database=PASSCODEDB -e "INSERT INTO Passcode (Passcode, SerialNo) VALUES ('$passcode', '$serial');"
