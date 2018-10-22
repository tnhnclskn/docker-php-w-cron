FROM tnhnclskn/php-w-exts

MAINTAINER Tunahan ÇALIŞKAN <mail@tunahancaliskan.com.tr>

USER root
RUN apt-get update && apt-get install -y cron

# create cron log
RUN touch /etc/cron.d/crontab
RUN touch /var/log/cron.log

COPY start.sh /start.sh
RUN chmod +x /start.sh

USER 1000

ENTRYPOINT ["/start.sh"]
