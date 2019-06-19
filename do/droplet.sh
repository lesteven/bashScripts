#!/bin/bash

source droplet.config
ssh -tt -i ~/.ssh/$key $name@$ip
