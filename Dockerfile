FROM python:3.7

RUN apt-get update && apt-get -y install -qq --force-yes cron
RUN pip install domain-connect-dyndns
RUN mkdir --parents /app/data

COPY run.sh /app/run.sh
COPY update-cron /etc/cron.d/update-cron

RUN chmod 0644 /etc/cron.d/update-cron
RUN crontab /etc/cron.d/update-cron
RUN touch /var/log/cron.log

WORKDIR /app/data
ENV DOMAIN "example.com"
VOLUME /app/data

CMD cron && tail -f /var/log/cron.log
