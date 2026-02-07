FROM python:3.12-slim

WORKDIR /app

RUN apt-get update && apt-get install -y jq \
 && pip install --no-cache-dir camply

COPY run.sh /app/run.sh
RUN chmod +x /app/run.sh

CMD ["/app/run.sh"]
