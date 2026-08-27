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

ENV_FILE="${ENV_FILE:-.env.deploy}"
LOCAL_DIR="public"
MARKER_FILE=".deploy-site-marker"
MODE="deploy"
DRY_RUN=0

for arg in "$@"; do
  case "$arg" in
    --dry-run) DRY_RUN=1 ;;
    --init-marker) MODE="init-marker" ;;
    *) echo "Usage: $0 [--dry-run] [--init-marker]" >&2; exit 1 ;;
  esac
done

command -v lftp >/dev/null || {
  echo "Error: lftp not found. Install with: brew install lftp" >&2
  exit 1
}

if [ ! -f "$ENV_FILE" ]; then
  echo "Error: $ENV_FILE not found. Copy .env.deploy.example to $ENV_FILE and fill in your FTP details." >&2
  exit 1
fi

set -a
# shellcheck disable=SC1090
source "$ENV_FILE"
set +a

: "${FTP_HOST:?FTP_HOST not set in $ENV_FILE}"
: "${FTP_USER:?FTP_USER not set in $ENV_FILE}"
: "${FTP_PASS:?FTP_PASS not set in $ENV_FILE}"
: "${FTP_REMOTE_DIR:?FTP_REMOTE_DIR not set in $ENV_FILE}"
: "${FTP_DEPLOY_MARKER:?FTP_DEPLOY_MARKER not set in $ENV_FILE}"
FTP_PROTOCOL="${FTP_PROTOCOL:-ftp}"
FTP_PORT="${FTP_PORT:-21}"

case "$FTP_REMOTE_DIR" in
  ""|"/")
    echo "Error: FTP_REMOTE_DIR is empty or '/' - refusing to touch the FTP account root." >&2
    exit 1
    ;;
esac

LFTP_SCRIPT="$(mktemp)"
chmod 600 "$LFTP_SCRIPT"
cleanup() { rm -f "$LFTP_SCRIPT"; }
trap cleanup EXIT

lftp_run() {
  # $1: lftp commands (without the "open" line)
  {
    echo "open -u \"$FTP_USER\",\"$FTP_PASS\" -p \"$FTP_PORT\" \"$FTP_PROTOCOL://$FTP_HOST\""
    echo "$1"
  } > "$LFTP_SCRIPT"
  lftp -f "$LFTP_SCRIPT"
}

confirm_target() {
  echo "Target: $FTP_PROTOCOL://$FTP_HOST:$FTP_PORT$FTP_REMOTE_DIR"
  if [ "$DRY_RUN" -eq 1 ]; then
    return 0
  fi
  if [ ! -t 0 ]; then
    echo "Error: no TTY to confirm and --dry-run not set. Aborting." >&2
    exit 1
  fi
  read -r -p "Type the remote path exactly to confirm ($FTP_REMOTE_DIR): " CONFIRM
  if [ "$CONFIRM" != "$FTP_REMOTE_DIR" ]; then
    echo "Confirmation did not match. Aborting." >&2
    exit 1
  fi
}

check_marker() {
  local found
  found="$(lftp_run "cat \"$FTP_REMOTE_DIR/$MARKER_FILE\"" 2>/dev/null || true)"
  if [ "$found" != "$FTP_DEPLOY_MARKER" ]; then
    cat >&2 <<EOF

Error: deploy marker missing or mismatched at
  $FTP_REMOTE_DIR/$MARKER_FILE
  expected: $FTP_DEPLOY_MARKER
  found:    ${found:-<none>}

Refusing to touch this remote folder - it doesn't look like the
right one. If this really is the intended target and this is the
first deploy, run:

  ./scDeploy.sh --init-marker

EOF
    exit 1
  fi
}

init_marker() {
  confirm_target
  local existing
  existing="$(lftp_run "cat \"$FTP_REMOTE_DIR/$MARKER_FILE\"" 2>/dev/null || true)"
  if [ -n "$existing" ] && [ "$existing" != "$FTP_DEPLOY_MARKER" ]; then
    echo "Error: a different marker already exists at $FTP_REMOTE_DIR/$MARKER_FILE - not overwriting." >&2
    exit 1
  fi
  if [ "$existing" == "$FTP_DEPLOY_MARKER" ]; then
    echo "Marker already present and matches. Nothing to do."
    return 0
  fi
  local marker_tmp
  marker_tmp="$(mktemp)"
  printf '%s' "$FTP_DEPLOY_MARKER" > "$marker_tmp"
  lftp_run "mkdir -p \"$FTP_REMOTE_DIR\"
put \"$marker_tmp\" -o \"$FTP_REMOTE_DIR/$MARKER_FILE\""
  rm -f "$marker_tmp"
  echo "Marker created at $FTP_REMOTE_DIR/$MARKER_FILE"
}

deploy() {
  check_marker
  confirm_target
  echo "This will sync '$LOCAL_DIR/' -> $FTP_REMOTE_DIR, deleting any remote file not present locally (except the marker)."

  echo "Building site..."
  ./scGenerate.sh

  if [ ! -d "$LOCAL_DIR" ]; then
    echo "Error: $LOCAL_DIR not found after build." >&2
    exit 1
  fi

  local mirror_cmd="mirror --reverse --delete-first --verbose --exclude '^${MARKER_FILE}\$' \"$LOCAL_DIR\" \"$FTP_REMOTE_DIR\""
  if [ "$DRY_RUN" -eq 1 ]; then
    mirror_cmd="$mirror_cmd --dry-run"
    echo "(dry run - no remote changes will be made)"
  fi
  lftp_run "$mirror_cmd"
  echo "Done."
}

case "$MODE" in
  init-marker) init_marker ;;
  deploy) deploy ;;
esac
