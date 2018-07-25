FROM tnhnclskn/symfony

MAINTAINER Tunahan ÇALIŞKAN <mail@tunahancaliskan.com.tr>

RUN apt-get update && apt-get install -y cron

# create cron log
RUN touch /etc/cron.d/crontab
RUN touch /var/log/cron.log

# add crontab file
RUN /usr/bin/crontab /etc/cron.d/crontab

ADD start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["./start.sh"]
