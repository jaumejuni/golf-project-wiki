#!/bin/bash
set -Eeuo pipefail

on_error() {
    local exit_code="$1"
    local line_no="$2"
    echo "Error: command failed at line ${line_no} (exit ${exit_code})" >&2
    exit "${exit_code}"
}

trap 'on_error $? $LINENO' ERR

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

command -v hugo >/dev/null || { echo "Error: hugo not found on PATH" >&2; exit 1; }

hugo server -D
