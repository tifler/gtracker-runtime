# mobius-runtime

## How to setup databases

1. Edit config.sh
2. Start Maria DB
```
./mariadb.sh start
```
3. Install databases
```
./install-gtracker-db.sh
./install-mobius-db.sh
./install-wps-db.sh
./init-settings.sh
```

## How to start and stop services

1. Run start.sh to start all services
```
./start.sh
```
2. Run stop.sh to stop all services
```
./stop.sh
```
3. Run *.sh to start and stop a service
```
./gtracker-admin.sh start/stop
./gtracker-proxy.sh start/stop
./gtracker-server.sh start/stop
./mobius.sh start/stop
./mariadb.sh start/stop
```

## How to monitor each docker

```
docker logs -tf <CONTAINER-ID>
```
