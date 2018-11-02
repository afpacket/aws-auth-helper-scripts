#!/usr/bin/env bash

# https://stackoverflow.com/questions/40852223/is-there-a-way-to-export-an-aws-cli-profile-to-environment-variables?rq=1

DEFAULT_PROFILE='okta'
PROFILE=${1:-$DEFAULT_PROFILE}

ACCESS_KEY_ID=$(aws configure get aws_access_key_id --profile "$PROFILE")
SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key --profile "$PROFILE")
SESSION_TOKEN=$(aws configure get aws_session_token --profile "$PROFILE")

echo 'export AWS_ACCESS_KEY_ID="'"$ACCESS_KEY_ID"'"'
echo 'export AWS_SECRET_ACCESS_KEY="'"$SECRET_ACCESS_KEY"'"'
echo 'export AWS_SESSION_TOKEN="'"$SESSION_TOKEN"'"'
