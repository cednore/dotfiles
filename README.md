# dotfiles

> My personal dotfiles

## Prerequisites

1. [`git-restore-mtime`](https://github.com/MestreLion/git-tools)

```bash
sudo apt install git-restore-mtime
```

## Clone and configure

```bash
# Go inside personal workspace folder
mkdir -p ~/workspace/cednore && cd ~/workspace/cednore

# Clone repo
git clone git@github.com:cednore/dotfiles.git

# Go inside repo folder
cd dotfiles

# Bi-directional rsync between the repo and home folder
./sync.sh # This will output git status at the end

# Forcibly sync
./sync.sh --force # This will output git status at the end
```

> Inspired from https://github.com/mathiasbynens/dotfiles
