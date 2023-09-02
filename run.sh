#!/bin/sh

if ! [ -e setup_done ] ;then
  echo "Starting setup"
  /usr/local/bin/domain-connect-dyndns setup --domain "$DOMAIN"
  touch setup_done
  echo "Setup done"
fi

echo "Starting cron"
cron && tail -f /var/log/cron.log
