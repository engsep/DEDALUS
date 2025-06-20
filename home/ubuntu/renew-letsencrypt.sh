docker run --rm -it --name certbot -p 80:80 -v "/var/www/certbot/:/var/www/certbot/" -v "/etc/letsencrypt/:/etc/letsencrypt/" -v "/var/lib/letsencrypt:/var/lib/letsencrypt" certbot/certbot renew
