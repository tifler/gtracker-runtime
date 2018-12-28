
export HOSTUSER=${USER}

# mariadb
export MARIA_DB_USER=root
export MARIA_DB_PASS=${MARIA_ROOT_PASSWORD}
export MARIA_DB_HOST=210.219.210.195
export MARIA_DB_PORT=3306
export MARIA_DB_HOST_PATH=$PWD/db/
export MARIA_ROOT_PASSWORD=mobiustest

# mobius
export MOBIUS_HOST=${MARIA_DB_HOST}
export MOBIUS_HTTP_PORT=7579
export MOBIUS_MQTT_PORT=1883
export MOBIUS_NOTI_PORT=9727
export MOBIUS_BASE=/home/tifler/work/iot/server/mobius-src/

# GTracker
export GTRACKER_BASE=/home/tifler/work/iot/server/gtracker-server/anapass/
export GTRACKER_SERVER_PORT=8080
export GTRACKER_DB_USER=${MARIA_DB_USER}
export GTRACKER_DB_PASS=${MARIA_DB_PASS}
export GTRACKER_DB_HOST=${MARIA_DB_HOST}
export GTRACKER_DB_PORT=${MARIA_DB_PORT}
