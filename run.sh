#!/bin/bash

mkdir data/apparmor -p 2>/dev/null

curl -sL "http://s3.amazonaws.com/hassio-version/apparmor.txt" > ./data/apparmor/hassio-supervisor

sudo apparmor_parser -r -W -L ./data/apparmor/cache ./data/apparmor/hassio-supervisor

echo 'CURRENT_DIR="`pwd`"' > .env

sudo docker-compose up -d 
