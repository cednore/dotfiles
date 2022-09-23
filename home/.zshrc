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
  zsh-autosuggestions
  git
  docker
  docker-compose
  npm
  yarn
  composer
  laravel
  artisan
  ubuntu
  terraform
  taskwarrior
  emoji
  sublime
)
source $ZSH/oh-my-zsh.sh

# powerlevel10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# load .profile
[[ ! -f ~/.profile ]] || source ~/.profile

# init vscode shell integration
[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path zsh)"

# shell history
export HISTFILE="$HOME_ROOT/.history/.zsh_history"
export HISTSIZE=999999999
export SAVEHIST=$HISTSIZE
setopt BANG_HIST                 # treat the '!' character specially during expansion
setopt INC_APPEND_HISTORY        # write to the history file immediately, not when the shell exits
setopt SHARE_HISTORY             # share history between all sessions
setopt HIST_EXPIRE_DUPS_FIRST    # expire duplicate entries first when trimming history
setopt HIST_IGNORE_DUPS          # don't record an entry that was just recorded again
setopt HIST_IGNORE_ALL_DUPS      # delete old recorded entry if new entry is a duplicate
setopt HIST_IGNORE_SPACE         # don't record an entry starting with a space
setopt HIST_SAVE_NO_DUPS         # don't write duplicate entries in the history file
setopt HIST_REDUCE_BLANKS        # remove superfluous blanks before recording entry
setopt HIST_VERIFY               # don't execute immediately upon history expansion
