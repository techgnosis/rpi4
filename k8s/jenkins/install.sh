#! /usr/bin/env zsh

set -euo pipefail

kapp deploy -a jenkins \
-f namespace.yaml \
-f serviceaccount.yaml \
-f deployment.yaml \
-f pvc.yaml \
-f service.yaml \
-f ingress.yaml