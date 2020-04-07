#!/usr/bin/env bash

if [ "$1" == "-h" ] || [ "$1" == "--help" ] || [ $# -eq 0 ]; then
   echo -e "Usage: $0 profile [mfa-code]"
   exit 1
fi

DEFAULT_PROFILE='test'
PROFILE=${1:-$DEFAULT_PROFILE}
MFA_SERIAL=$(aws configure get mfa_serial --profile "$PROFILE")

if [ -z "$2" ]; then
  echo "Enter MFA Token: "
  read -r MFA_TOKEN
else
  MFA_TOKEN="$2"
fi

AWS_SESSION_CREDENTIALS=$(aws sts get-session-token --serial-number "$MFA_SERIAL" --token-code "$MFA_TOKEN" --profile "$PROFILE")

ACCESS_KEY_ID=$(echo "$AWS_SESSION_CREDENTIALS" | jq '.Credentials.AccessKeyId') 
SECRET_ACCESS_KEY=$(echo "$AWS_SESSION_CREDENTIALS" | jq '.Credentials.SecretAccessKey')
SESSION_TOKEN=$(echo "$AWS_SESSION_CREDENTIALS" | jq '.Credentials.SessionToken')

echo "export AWS_ACCESS_KEY_ID=$ACCESS_KEY_ID"
echo "export AWS_SECRET_ACCESS_KEY=$SECRET_ACCESS_KEY"
echo "export AWS_SESSION_TOKEN=$SESSION_TOKEN"
