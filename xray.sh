#!/bin/sh
if [ ! -f UUID ]; then
  UUID="cd4bc4b8-f5e4-4b32-93ea-fb94ec6e402c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

