#!/bin/bash

docker run -d \
	--name=duckdns \
	--restart=always \
	--net=host \
	-e UPDATE_IP=both \
	-e TZ=Europe/Rome \
	-e SUBDOMAINS=engsep \
	-e TOKEN=c2b414eb-7d11-44c7-ad23-0547a2de4bb0 \
	ghcr.io/linuxserver/duckdns

docker logs duckdns -f
