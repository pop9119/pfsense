#!/bin/sh
# Force kill all unbound processes
killall -9 unbound
# Wait for processes to release resources
sleep 7
# Restart the unbound service
/usr/local/sbin/unbound -d -f /usr/local/etc/unbound.conf
