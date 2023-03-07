#! /usr/bin/env bash

set -euo pipefail

# this does not work on macOS. Use ubuntu.sh to run this in a Ubuntu container

export PASSWORD=$1
USERNAME=$2

ENCRYPTED_PASSWORD=$(echo "${PASSWORD}" | openssl passwd -6 -stdin)
echo ${USERNAME}:${ENCRYPTED_PASSWORD} > userconf