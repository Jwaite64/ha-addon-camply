FROM python:3.12-slim

WORKDIR /app

RUN apt-get update \
 && apt-get install -y jq \
 && pip install --no-cache-dir camply \
 && rm -rf /var/lib/apt/lists/*

COPY run.sh /app/run.sh

# Normalize line endings + ensure executable
RUN sed -i 's/\r$//' /app/run.sh \
 && chmod +x /app/run.sh \
 && ls -la /app

ENTRYPOINT ["sh", "/app/run.sh"]
