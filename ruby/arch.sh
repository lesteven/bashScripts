#!/bin/bash

# install older openssl in order to install ruby 2.3.5
sudo pacman -S gcc6 openssl-1.0
PKG_CONFIG_PATH=/usr/lib/openssl-1.0/pkgconfig rbenv install 2.3.5

rbenv local 2.3.5
gem install rails -v 4.2.1
rbenv rehash
