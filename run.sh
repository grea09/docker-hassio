#!/bin/bash

sudo -i

curl -sL "http://s3.amazonaws.com/hassio-version/apparmor.txt" > ./data/apparmor/hassio-supervisor

apparmor_parser -r -W -L ./data/apparmor/cache ./data/apparmor/hassio-supervisor

APPARMOR="--security-opt apparmor=hassio-supervisor"

docker-compose up -d
