FROM python:3.12-slim

RUN apt-get update \
 && apt-get install -y jq \
 && pip install --no-cache-dir camply \
 && rm -rf /var/lib/apt/lists/*

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
