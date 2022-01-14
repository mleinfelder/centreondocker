# centreon-docker 3.4. #
---

## INSTALL ##

Build or pull from docker hub

Build:

```
docker build -t manuvaldi/centreon-docker .
```

or Pull:

```
docker pull manuvaldi/centreon-docker
```

## RUN ##

```
docker run --name centreon --restart always -p80:80  \
        -v /etc/localtime:/etc/localtime:ro \
        -v /data/centreon/backup:/var/backup \
        -v /data/centreon/mysql:/var/lib/mysql \
        -v /data/centreon/etc/centreon:/etc/centreon \
        -v /data/centreon/etc/centreon-engine:/etc/centreon-engine \
        -v /data/centreon/etc/centreon-broker:/etc/centreon-broker \
	manuvaldi/centreon-docker
```

login: admin
password: centreon

Change it and lets go 
# Centreon Docker
