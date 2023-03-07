#! /usr/bin/env zsh

set -euo pipefail

kubectl run troubleshooting -n kube-system -it --rm --image=nicolaka/netshoot