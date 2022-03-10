#!/usr/bin/env bash

function doBiodirectionalRsync() {
  rsync --files-from=<(find . -type f ! -path "./.git/*" ! -path "./LICENSE" ! -path "./README.md" ! -path "./sync.sh") -auvh --no-perms . ~;
  rsync --files-from=<(find . -type f ! -path "./.git/*" ! -path "./LICENSE" ! -path "./README.md" ! -path "./sync.sh") -auvh --no-perms ~ .;
  echo "";
  echo "";
  echo "git status --porcelain";
  echo "----------------------";
  git status --porcelain;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doBiodirectionalRsync;
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
  echo "";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doBiodirectionalRsync;
  fi;
fi;
unset doBiodirectionalRsync;
