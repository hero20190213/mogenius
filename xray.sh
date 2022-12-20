#!/bin/sh
if [ ! -f UUID ]; then
  UUID="bdb267dc-7b28-47a2-90f2-64ed79e3092c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

