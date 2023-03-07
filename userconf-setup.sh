#! /usr/bin/env bash

set -euo pipefail

export PASSWORD=$1
USERNAME=$2

ENCRYPTED_PASSWORD=$(echo "${PASSWORD}" | openssl passwd -6 -stdin)
echo ${USERNAME}:${ENCRYPTED_PASSWORD} > userconf