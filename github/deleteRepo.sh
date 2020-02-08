#!/bin/bash


source ghToken.sh

read -p "Enter reponame: " repo


curl -X DELETE \
    https://api.github.com/repos/lesteven/$repo \
    -H 'Authorization: token '$token'' \
