# CentreonDocker 3.4a #
---

## INSTALL ##

Build or pull from docker hub

Build:

```
docker build -t mleinfelder/centreondk .
```

or Pull:

```
docker pull mleinfelder/centreondk
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

Para rodar via docker-composer: 

execute docker-compose up -d 

Dentro da arvore onde se encontra o arquivos docker-compose.yml.

login: admin
password: centreon

Imagem referencia a manuvaldi/centreon-docker
Change it and lets go 
# Centreon Docker
