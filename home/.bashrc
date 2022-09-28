# load .profile
[[ ! -f ~/.profile ]] || source ~/.profile

# init vscode shell integration
[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path bash)"

# customize history file path
export HISTFILE="$HOMEREPO_ROOT/.history/.bash_history"
