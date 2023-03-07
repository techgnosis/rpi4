#! /usr/bin/env zsh

set -euo pipefail

kapp deploy -a node-red \
-f deployment.yaml \
-f ingress.yaml \
-f service.yaml \
-f namespace.yaml \
-f pvc.yaml