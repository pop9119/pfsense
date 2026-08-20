#!/bin/sh
# Force kill all unbound processes with maximum scheduling priority
# nice -n -20 gives the process the highest non-realtime priority
nice -n -20 killall -9 unbound

# Wait for processes to release resources (7 seconds)
sleep 7

# Restart the unbound service
/usr/local/sbin/unbound -d -f /usr/local/etc/unbound.conf
