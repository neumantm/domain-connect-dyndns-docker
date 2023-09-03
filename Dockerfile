FROM python:3.11

RUN pip install domain-connect-dyndns
RUN mkdir --parents /app/data

COPY run.sh /app/run.sh
COPY update.sh /app/update.sh

WORKDIR /app/data
ENV DOMAIN "example.com"
VOLUME /app/data

CMD /bin/sh /app/run.sh
