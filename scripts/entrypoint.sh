#!/bin/bash
if [ ! -f /etc/centreon/centreon.conf.php ]; then
	cp -Rp /etc/centreon.original/* /etc/centreon/
	chown centreon:centreon /etc/centreon
fi

if [ ! -f /etc/centreon-broker/central-broker.xml ]; then
	cp -Rp /etc/centreon-broker.original/* /etc/centreon-broker/
	chown centreon-broker:centreon-broker /etc/centreon-broker
fi

if [ ! -f /etc/centreon-engine/centengine.cfg ]; then
	cp -Rp  /etc/centreon-engine.original/*  /etc/centreon-engine/
	chown centreon-engine:centreon-engine /etc/centreon-engine
fi

if [ ! -f /var/lib/mysql/ibdata1 ]; then
	cp -Rp  /var/lib/mysql.original/*  /var/lib/mysql/
	chown mysql:mysql /var/lib/mysql
fi

exec /usr/bin/supervisord --configuration=/etc/supervisord.conf
