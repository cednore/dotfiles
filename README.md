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

# Bio-directional rsync between the repo and home folder
./sync.sh # This will output git status at the end

# Forcibly sync
./sync.sh --force # This will output git status at the end
```
