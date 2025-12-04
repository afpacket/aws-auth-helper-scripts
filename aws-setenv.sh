#!/usr/bin/env bash

DEFAULT_PROFILE='okta'
PROFILE=${1:-$DEFAULT_PROFILE}

aws configure export-credentials --profile "$PROFILE" --format env
