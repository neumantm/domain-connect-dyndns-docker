#!/bin/sh

if ! [ -e setup_done ] ;then
  echo "Starting setup"
  /usr/local/bin/domain-connect-dyndns setup --domain "$DOMAIN"
  touch setup_done
  echo "Setup done"
fi

echo "Starting infinite loop"

while true ; do
  echo "Running update script"
  /bin/sh /app/update.sh
  echo "Sleeping for 3600 seconds"
  sleep 3600
done
