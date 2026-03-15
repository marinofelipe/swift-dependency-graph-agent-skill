#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
VENV_PY="${ROOT_DIR}/.venv/bin/python"
CODEX_HOME="${CODEX_HOME:-${HOME}/.codex}"
VALIDATOR="${CODEX_HOME}/skills/.system/skill-creator/scripts/quick_validate.py"

if [[ ! -x "${VENV_PY}" ]]; then
  echo "Missing venv at ${VENV_PY}."
  echo "Create it with: python3 -m venv ${ROOT_DIR}/.venv"
  exit 1
fi

if [[ ! -f "${VALIDATOR}" ]]; then
  echo "Missing validator at ${VALIDATOR}."
  echo "Ensure CODEX_HOME is set or Codex skills are installed."
  exit 1
fi

exec "${VENV_PY}" "${VALIDATOR}" "${ROOT_DIR}"
