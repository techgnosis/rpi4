#! /usr/bin/env bash

set -euo pipefail

colima nerdctl -- run -it -v $(pwd):/root --workdir "/root" --rm ubuntu bash