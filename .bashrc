# Load .profile
[[ ! -f ~/.profile ]] || source ~/.profile

# Init vscode shell integration
if [ "$TERM_PROGRAM" == "vscode" ]; then
  . /usr/share/code/resources/app/out/vs/workbench/contrib/terminal/browser/media/shellIntegration-bash.sh
fi
