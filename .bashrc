# Load .profile
[[ ! -f ~/.profile ]] || source ~/.profile

# Init vscode shell integration
[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path bash)"
