#!/usr/bin/env bash

if [ $(whoami) != 'root' ]; then
   echo "Must be root to run script"
   exit 1
fi

cd /usr/local/bin

wget https://raw.githubusercontent.com/afpacket/okta-aws-helper-scripts/master/okta-login.sh
wget https://raw.githubusercontent.com/afpacket/okta-aws-helper-scripts/master/okta-setenv.sh

chmod 755 ./okta-login.sh
chmod 755 ./okta-setenv.sh
