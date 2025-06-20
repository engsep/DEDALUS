#!/bin/bash

if docker run -it --rm -p 80:80 -v $(pwd)/certbot/conf:/etc/letsencrypt certbot/certbot \
  certonly --standalone -d samothrace.duckdns.org --register-unsafely-without-email --agree-tos --dry-run -v # --non-interactive
then
  if docker run -it --rm -p 80:80 -v $(pwd)/certbot/conf:/etc/letsencrypt certbot/certbot \
    certonly --standalone -d samothrace.duckdns.org  --register-unsafely-without-email --agree-tos -v # --non-interactive
  then
    echo -e "\e[32mCertificato ottenuto con successo.\e[0m"
  else
    echo -e "\e[31mErrore nell'ottenimento del certificato.\e[0m"
  fi
else
  echo -e "\e[31mImpossibile ottenere il certificato (dry-run).\e[0m"
fi

sudo chown -R $(id -u):$(id -g) certbot