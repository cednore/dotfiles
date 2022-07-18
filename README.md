# dotfiles

> My personal dotfiles

## Clone and configure

```bash
# Go inside personal workspace folder
mkdir -p ~/workspace/cednore && cd ~/workspace/cednore

# Clone repo
git clone git@github.com:cednore/dotfiles.git

# Go inside repo folder
cd dotfiles

# Sync files from repo to home folder via rsync
./sync.sh

# Forcibly sync
./sync.sh --force
```

> Inspired from https://github.com/mathiasbynens/dotfiles
