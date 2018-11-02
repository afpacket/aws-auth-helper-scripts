# okta-aws-helper-scripts
Scripts to help with Okta authentication to AWS

Depends on [okta-aws-cli-assume-role](https://github.com/oktadeveloper/okta-aws-cli-assume-role) and [aws-cli](https://github.com/aws/aws-cli)

Please see [ansible-role-okta-aws-cli-assume-role](https://github.com/afpacket/ansible-role-okta-aws-cli-assume-role) for assistance with installation of [okta-aws-cli-assume-role](https://github.com/oktadeveloper/okta-aws-cli-assume-role) on Linux systems.

## Instructions
Copy scripts to /usr/local/bin and add these to your bashrc 

```
function okta-login { /usr/local/bin/okta-login.sh "$1"; }
function okta-setenv { eval "$(/usr/local/bin/okta-setenv.sh "$1")"; }
```

These scripts by default leverage the profile name of `okta` but you can set different profile names simply by including the desired name as an argument (i.e. `okta-login dev`).
