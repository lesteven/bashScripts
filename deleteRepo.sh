#!/bin/bash


read -p "Enter username: " username

read -p "Enter reponame: " repo


curl -u $username -X DELETE \
    https://api.github.com/repos/$username/$repo 
