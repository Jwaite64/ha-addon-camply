#!/usr/bin/with-contenv sh
set -e

CAMPGROUND_ID=$(jq -r '.campground_id' /data/options.json)
START_DATE=$(jq -r '.start_date' /data/options.json)
END_DATE=$(jq -r '.end_date' /data/options.json)
POLL_INTERVAL=$(jq -r '.poll_interval' /data/options.json)

WEBHOOK_URL="http://homeassistant:8123/api/webhook/camply_campsite_available"

echo "Starting Camply Campsite Watcher"
echo "Campground: $CAMPGROUND_ID"
echo "Dates: $START_DATE → $END_DATE"
echo "Polling every $POLL_INTERVAL seconds"

exec python3 -m camply campsites \
  --campground "$CAMPGROUND_ID" \
  --start-date "$START_DATE" \
  --end-date "$END_DATE" \
  --polling-interval "$POLL_INTERVAL" \
  --notifications webhook \
  --webhook-url "$WEBHOOK_URL" \
  --search-forever
