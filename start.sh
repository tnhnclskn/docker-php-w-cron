#!/bin/bash

cat /etc/cron.d/crontab
/usr/bin/crontab -u 1000 /etc/cron.d/crontab
cron
tail -f /var/log/cron.log
