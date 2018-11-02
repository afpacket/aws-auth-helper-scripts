#!/usr/bin/env bash

DEFAULT_PROFILE='okta'
PROFILE=${1:-$DEFAULT_PROFILE}

function okta-aws {
    withokta "aws --profile $PROFILE" "$@"
}

okta-aws "$PROFILE" sts get-caller-identity
