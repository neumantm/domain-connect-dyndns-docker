#!/bin/sh

echo "Using domain $DOMAIN"

echo "Status:"
/usr/local/bin/domain-connect-dyndns status --domain "$DOMAIN"
echo "Updating at $(date)"
/usr/local/bin/domain-connect-dyndns update --domain "$DOMAIN"
