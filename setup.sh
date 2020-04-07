#!/usr/bin/env bash

if [ $(whoami) != 'root' ]; then
   echo "Must be root to run script"
   exit 1
fi

cd /usr/local/bin

cp okta-login.sh /usr/local/bin
cp aws-native-mfa-login.sh /usr/local/bin
cp aws-setenv.sh /usr/local/bin
ln -s /usr/local/bin/okta-setenv.sh /usr/local/bin/aws-setenv.sh

chmod 755 /usr/local/bin/okta-login.sh
chmod 755 /usr/local/bin/aws-native-mfa-login.sh
chmod 755 /usr/local/bin/aws-setenv.sh
ln -s /usr/local/bin/aws-setenv.sh /usr/local/bin/okta-setenv.sh
