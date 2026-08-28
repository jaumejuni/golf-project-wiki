#!/bin/sh
set -e

usage() {
  echo "Usage:"
  echo "  $0 <path>     Remove the submodule at <path>"
  echo "  $0 --all      Remove all submodules defined in .gitmodules"
  echo "  $0 --install  Install (clone) all submodules defined in .gitmodules"
  exit 1
}

remove_one() {
  path="$1"
  if [ ! -f "$path/.git" ]; then
    echo "$path is no valid git submodule"
    exit 1
  fi
  git submodule deinit -f "$path" &&
  git rm --cached "$path" &&
  rm -rf ".git/modules/$path" &&
  rm -rf "$path" &&
  git reset HEAD .gitmodules &&
  git config -f .gitmodules --remove-section "submodule.$path"
}

remove_all() {
  if [ ! -f .gitmodules ]; then
    echo "No .gitmodules file found - nothing to remove"
    exit 0
  fi
  paths=$(git config -f .gitmodules --get-regexp '\.path$' | awk '{print $2}')
  if [ -z "$paths" ]; then
    echo "No submodules defined in .gitmodules"
    exit 0
  fi
  for path in $paths; do
    echo "Removing submodule: $path"
    remove_one "$path"
  done
}

install_all() {
  git submodule update --init --recursive
}

case "$1" in
  --all) remove_all ;;
  --install) install_all ;;
  -h|--help|"") usage ;;
  *) remove_one "$1" ;;
esac
