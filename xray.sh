#!/bin/sh
if [ ! -f UUID ]; then
  UUID="562706c4-dec0-48aa-85c6-ce4c6e3d5a94"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

