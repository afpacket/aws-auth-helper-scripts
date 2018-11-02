# okta-aws-helper-scripts
Scripts to help with Okta authentication to AWS

Depends on https://github.com/oktadeveloper/okta-aws-cli-assume-role

## Instructions
Copy scripts to /usr/local/bin and add these to your bashrc 

```
function okta-login { /usr/local/bin/okta-login.sh "$1"; }
function okta-setenv { eval "$(/usr/local/bin/okta-setenv.sh "$1")"; }
```

These scripts by default leverage the profile name of `okta` but you can set different profile names simply by including the desired name as an argument (i.e. `okta-login dev`).
