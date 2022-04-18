# powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ohmyzsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# DISABLE_UPDATE_PROMPT="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
plugins=(
  git
  zsh-autosuggestions
  ubuntu
  sublime
  laravel
  artisan
  docker-compose
  emoji
  npm
)
source $ZSH/oh-my-zsh.sh

# powerlevel10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# linuxbrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# phpenv
export PHPENV_ROOT="$HOME/.phpenv"
if [ -d "${PHPENV_ROOT}" ]; then
  export PATH="${PHPENV_ROOT}/bin:${PATH}"
  eval "$(phpenv init -)"
fi

# composer
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# go
if command -v go &> /dev/null; then
  export PATH="$(go env GOPATH)/bin:$PATH"
fi

# python
alias python=/usr/bin/python3
export PATH="$HOME/.local/bin:$PATH"

# rbenv
if command -v rbenv &> /dev/null; then
  eval "$(rbenv init -)"
fi

# awscliv2
alias aws=awscliv2

# terraform
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform

# flyctl
export FLYCTL_INSTALL="$HOME/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

# osx simulation
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias ofd='xdg-open .'

# qr
alias qr='qrencode -m 2 -t utf8 <<< "$1"'
function qr2clip { qrencode $1 -o - | xclip -selection clipboard -t image/png }
alias q2c='qr2clip'
alias qrfrmclip='xclip -selection clipboard -t image/png -o | zbarimg -'
alias qfc='qrfrmclip'

# clipboard
alias printpngclip='xclip -selection clipboard -t image/png -o'
alias ppc='printpngclip'
