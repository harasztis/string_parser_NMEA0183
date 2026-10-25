#!/usr/bin/env bash
# Run a command (or an interactive shell) inside the dev container.
set -euo pipefail

docker run --rm -it \
  --cap-add=SYS_PTRACE --security-opt seccomp=unconfined \
  -v "$PWD":/workspace -w /workspace \
  nmea-dev "${@:-bash}"
