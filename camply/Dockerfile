FROM python:3.12-slim

WORKDIR /app

RUN pip install --no-cache-dir camply jq

COPY run.sh /app/run.sh
RUN chmod +x /app/run.sh

CMD ["/app/run.sh"]
