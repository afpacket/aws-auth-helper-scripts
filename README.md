# aws-auth-helper-scripts
Scripts to help with Okta authentication to AWS

Depends on [aws-cli](https://github.com/aws/aws-cli) and either [okta-awscli](https://github.com/jmhale/okta-awscli) or [okta-aws-cli-assume-role](https://github.com/oktadeveloper/okta-aws-cli-assume-role). 

`aws-setenv` reads from `~/.aws/credentials` and sets the `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY` and `AWS_SESSION_TOKEN` environment variables accordingly.

## Instructions
Copy scripts to /usr/local/bin (or run `setup.sh`) and add these functions to your bashrc: 

```
function okta-login { /usr/local/bin/okta-login.sh "$1"; } # not needed for okta-awscli
function aws-native-mfa-login { eval "$(/usr/local/bin/aws-native-mfa-login.sh "$1" "$2")"; }
function aws-setenv { eval "$(/usr/local/bin/aws-setenv.sh "$1")"; }
```

These scripts by default leverage the profile name of `okta` but you can set different profile names simply by including the desired name as an argument (i.e. `aws-setenv dev`).

Note: if using `okta-awscli`, you need to supply the `--profile` with you command (i.e. `okta-awscli --okta-profile dev --profile dev`) so that the credentials get put into `~/.aws/credentials`.
