#!/bin/bash

# https://www.duckdns.org/domains (engsep@github)
DUCKDNS_DOMAIN="engsep"
DUCKDNS_TOKEN="c2b414eb-7d11-44c7-ad23-0547a2de4bb0"

echo "DNS: $DUCKDNS_DOMAIN.duckdns.org"
echo "IP4: $(curl -s https://ipv4.icanhazip.com)"
echo "IP6: $(curl -s https://ipv6.icanhazip.com)"

if [[ $(curl -s "https://www.duckdns.org/update?domains=$DUCKDNS_DOMAIN&token=$DUCKDNS_TOKEN&ip=&ipv6=") == *"OK"* ]]
then
  echo -e "\e[32mAggiornamento degli IP su DuckDNS riuscito.\e[0m"
else
  echo -e "\e[31mErrore nell'aggiornamento degli IP su DuckDNS.\e[0m"
fi

if docker run -it --rm -p 80:80 -v $(pwd)/certbot/conf:/etc/letsencrypt certbot/certbot \
  certonly --standalone -d $DUCKDNS_DOMAIN.duckdns.org --register-unsafely-without-email --agree-tos -v --dry-run # --non-interactive
then
  if docker run -it --rm -p 80:80 -v $(pwd)/certbot/conf:/etc/letsencrypt certbot/certbot \
    certonly --standalone -d $DUCKDNS_DOMAIN.duckdns.org  --register-unsafely-without-email --agree-tos -v --keep # -n
  then
    echo -e "\e[32mCertificato ottenuto con successo.\e[0m"
  else
    echo -e "\e[31mErrore nell'ottenimento del certificato.\e[0m"
  fi
else
  echo -e "\e[31mImpossibile ottenere il certificato (dry-run).\e[0m"
fi

#sudo chown -R $(id -u):$(id -g) certbot
