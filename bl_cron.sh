#!/bin/bash

HOST="8.8.8.8"
POSTMASTER="postmaster@domain.net"

REPORT=$(/usr/local/bin/bl $HOST)
if [ $? -eq 3 ]; then
  echo "$REPORT" | mail -e -s "Blacklist report for $HOST" $POSTMASTER 
fi

