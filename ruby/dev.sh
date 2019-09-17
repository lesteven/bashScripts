#!/bin/bash

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile

# automated install of rbenv
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash

# gem 'sqlite3' -> gem 'sqlite3', '~>1.3.7'
# bundle install
