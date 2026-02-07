ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache python3 py3-pip jq \
 && pip3 install --no-cache-dir --break-system-packages camply

# Create s6 service
RUN mkdir -p /etc/services.d/camply

# Copy s6 run script
COPY run.sh /etc/services.d/camply/run
RUN chmod +x /etc/services.d/camply/run
