#!/bin/bash

# queries for ubuntu amis w/ ubuntu cloud account -> 18.04 amd64
aws ec2 describe-images \
    --owners 099720109477 \
    --filters 'Name=name,Values=*ubuntu/images/hvm-ssd/ubuntu-*-20.04*amd64*' \
    --query 'reverse(sort_by(Images, &CreationDate))' \
    > ami.txt

