ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache python3 py3-pip jq \
 && pip3 install --no-cache-dir --break-system-packages camply

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
