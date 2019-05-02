#!/bin/bash

source ./deployKey.config

FILE=~/.ssh/$deploy_key_file

if [ ! -f "$FILE" ]; then
    echo "$FILE does not exist, creating.."
    printf y | ssh-keygen -f ~/.ssh/"$deploy_key" -t rsa -b 4096 -C $email

    ssh-add ~/.ssh/"$deploy_key"

    key=$(cat ~/.ssh/"$deploy_key_file")

    json='{"title":"'$deploy_key'","key":"'$key'","read_only":true}'

    echo $json
    curl -i -u lesteven -d "$json" https://api.github.com/repos/lesteven/nodeServer/keys
else
    echo "$FILE exists"
fi
