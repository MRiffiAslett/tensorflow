#!/usr/bin/env bash
set -euo pipefail

# Always run from repo root
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

docker run --rm -it \
  -v "${REPO_ROOT}:/tensorflow" \
  -w /tensorflow \
  tf-xla-build:2.20 \
  bash

