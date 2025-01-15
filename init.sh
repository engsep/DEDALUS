#!/bin/bash

docker run --rm -p 80:80 -v $(pwd)/certbot/conf:/etc/letsencrypt certbot/certbot \
certonly --standalone -d engsep.duckdns.org --register-unsafely-without-email --agree-tos --non-interactive
