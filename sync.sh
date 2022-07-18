#!/usr/bin/env bash

function doSync() {
  rsync --files-from=<(find . -type f ! -path "./.git/*" ! -path "./LICENSE" ! -path "./README.md" ! -path "./sync.sh" ! -path "./.extra") -avh --no-perms . ~;
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
