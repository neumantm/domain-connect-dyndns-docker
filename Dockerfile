FROM python:3.7

RUN pip install domain-connect-dyndns
RUN mkdir --parents /app/data

ADD run.sh /app/run.sh

WORKDIR /app

ENTRYPOINT ["/bin/sh"]

CMD ["/app/run.sh" "/app/data/setup_done"]
