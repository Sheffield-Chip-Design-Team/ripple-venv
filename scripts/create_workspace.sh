#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_VENV_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
PARENT_DIR="$(cd "$PROJECT_VENV_DIR/.." && pwd)"

cd "$PARENT_DIR"
mkdir workspace
cd workspace
fusesoc library add ripple_cpu https://github.com/Sheffield-Chip-Design-Team/ripple-32i-core
fusesoc library add ram        https://github.com/Sheffield-Chip-Design-Team/sharc-memory-lib
