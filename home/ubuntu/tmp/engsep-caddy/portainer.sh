#!/bin/bash

docker run -d \
	--name portainer \
	--restart=always \
	-p 8000:8000 \
	-p 9000:9000 \
	-p 9443:9443 \
	-v /var/run/docker.sock:/var/run/docker.sock:ro \
	-v portainer_data:/data \
	portainer/portainer-ce

docker logs portainer -f
