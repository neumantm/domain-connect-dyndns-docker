#!/bin/sh

echo "Updating at $(date)"
/usr/local/bin/domain-connect-dyndns update --domain "$DOMAIN"
