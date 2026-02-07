FROM ghcr.io/home-assistant/base-python:3.12

RUN apk add --no-cache jq \
 && pip install --no-cache-dir camply

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
]
