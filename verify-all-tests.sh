#!/bin/bash

# apt install jq

echo "Test /orion/version"
./etc/scripts/version.sh

echo "Test /orion/ngsi-ld/ex/v1/version"
./etc/scripts/versionOrion-LD.sh

echo "Write entity"
./etc/scripts/write.sh

echo "Read entity"
./etc/scripts/read.sh

echo "Delete entity"
./etc/scripts/delete.sh
