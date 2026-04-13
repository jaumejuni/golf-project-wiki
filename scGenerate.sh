#!/bin/bash
set -Eeuo pipefail

on_error() {
    local exit_code="$1"
    local line_no="$2"
    echo "Error: command failed at line ${line_no} (exit ${exit_code})" >&2
    exit "${exit_code}"
}

trap 'on_error $? $LINENO' ERR

rm -rf ./public
hugo --minify
echo "Bye."
