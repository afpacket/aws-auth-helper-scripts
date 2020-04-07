#!/usr/bin/env bash

if [ $(whoami) != 'root' ]; then
   echo "Must be root to run script"
   exit 1
fi

cd /usr/local/bin

curl -L https://raw.githubusercontent.com/afpacket/okta-aws-helper-scripts/master/okta-login.sh -O
curl -L https://raw.githubusercontent.com/afpacket/okta-aws-helper-scripts/master/aws-native-mfa-login.sh -O
curl -L https://raw.githubusercontent.com/afpacket/okta-aws-helper-scripts/master/aws-setenv.sh -O
ln -s /usr/local/bin/okta-setenv.sh /usr/local/bin/aws-setenv.sh

chmod 755 ./okta-login.sh
chmod 755 ./aws-native-mfa-login.sh
chmod 755 ./aws-setenv.sh
ln -s /usr/local/bin/aws-setenv.sh /usr/local/bin/okta-setenv.sh
