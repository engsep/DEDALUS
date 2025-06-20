#!/bin/bash

docker run -d \
  -p 49160:8080
  -e "NODE_ENV=production" \
  -u "node" \
  -m "300M" --memory-swap "1G" \
  -w "/home/node/app" \
  --name "my-nodejs-app" \
<your username>/node-web-app