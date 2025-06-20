#!/bin/bash

echo -e "\033[1;36mBackup folder: $(pwd)\033[0m"
read -n 1 -p "Do you want to proceed? [Y/n] " key && [[ -z $key ]] && echo
[[ $key =~ [nN] ]] && exit
tar --exclude='*/.db/*' --exclude='*/.npm/*' --exclude='*/node_modules/*' --exclude='*/.backup' -zcvf $(basename $(pwd))_$(date +%Y%m%d%H%M%S).tar.gz .
mkdir public-tmp
mv $(basename $(pwd))*.tar.gz public-tmp/
docker run -d --rm -p 8118:80 --name apache-tmp -v $(pwd)/public-tmp:/usr/local/apache2/htdocs/ httpd:alpine
echo  -e "\033[1;33mDownload file at: http://$(curl -sSL ifconfig.me):8118\033[0m"
echo Press Enter to stop the Apache server and delete files...
read key
docker stop apache-tmp
#docker rm apache-tmp
sudo rm -r public-tmp
