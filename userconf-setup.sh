#! /usr/bin/env bash

set -euo pipefail


PASSWORD=$(echo 'mypassword' | openssl passwd -6 -stdin)
echo "myuser:${PASSWORD}" > userconf