#!/bin/bash

STEAM_USERNAME=""
STEAM_PASSWORD=""
STEAM_GUARD_CODE=""

if [[ $1 == "server" ]]
then
	TARGET_FILE="docker-compose.yml"
elif [[ $1 == "client" ]]
then
	TARGET_FILE="docker-compose.hc.yml"
else
	echo "Target not supported. Try one of 'client' or 'server'"
	exit 1
fi

docker-compose build --build-arg STEAM_USERNAME=$STEAM_USERNAME --build-arg STEAM_PASSWORD=$STEAM_PASSWORD --build-arg STEAM_GUARD_CODE=$STEAM_GUARD_CODE

