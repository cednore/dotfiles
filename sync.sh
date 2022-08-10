#!/usr/bin/env bash

function doSync() {
  find . \
    -type f \
    ! -path "./.git/*" \
    ! -path "./.gitignore" \
    ! -path "./LICENSE" \
    ! -path "./README.md" \
    ! -path "./sync.sh" \
    -exec sh -c 'mkdir -p $(dirname ~/$1) && ln -sf $(realpath $1) ~/$1' sh "{}" \;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doSync;
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
  echo "";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doSync;
  fi;
fi;
