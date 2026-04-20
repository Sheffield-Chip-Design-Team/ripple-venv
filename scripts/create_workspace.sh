#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_VENV_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
PARENT_DIR="$(cd "$PROJECT_VENV_DIR/.." && pwd)"

cd "$PARENT_DIR"
mkdir workspace
cd workspace
fusesoc library add counter https://github.com/Sheffield-Chip-Design-Team/Frontend-Workshop-1.git