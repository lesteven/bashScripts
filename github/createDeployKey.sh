#!/bin/bash

source ./deployKey.config

FILE=~/.ssh/$deploy_key

if [ ! -f "$FILE" ]; then
    echo "$FILE does not exist, creating.."
    ssh-keygen -f "$FILE" -t rsa -b 4096 -N ""

    key=$(cat ~/.ssh/"$deploy_key".pub)

    json='{"title":"'$deploy_key'","key":"'$key'","read_only":true}'

    echo $json
    curl -i -u lesteven -d "$json" https://api.github.com/repos/lesteven/nodeServer/keys
else
    echo "$FILE exists"
fi
