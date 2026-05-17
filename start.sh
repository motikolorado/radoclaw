#!/bin/sh
mkdir -p /data
chown -R node:node /data 2>/dev/null || true
chmod -R 755 /data
exec node dist/index.js gateway --port 3000 --bind lan
