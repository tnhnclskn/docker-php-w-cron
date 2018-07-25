#!/bin/bash

cat /etc/cron.d/crontab
/usr/bin/crontab -u root /etc/cron.d/crontab
cron
tail -f /var/log/cron.log
