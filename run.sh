#!/bin/sh

if [ -e "$1" ] ;then
  domain-connect-dyndns update --domain "$DOMAIN"
else
  domain-connect-dyndns setup --domain "$DOMAIN"
  touch "$1"
fi
