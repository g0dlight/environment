NOCOLOR="\[\033[0m\]"
BLACK="\[\033[0;30m\]"
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
PURPLE="\[\033[0;35m\]"
CYAN="\[\033[0;36m\]"
WHITE="\[\033[0;37m\]"

GIT_BRANCH=""
if [ -f /Users/orel/.git-prompt.sh ]; then
  source /Users/orel/.git-prompt.sh
  GIT_BRANCH='$(__git_ps1 "(%s)")'
  GIT_BRANCH="$YELLOW$GIT_BRANCH$NOCOLOR"
fi

export PATH=~/Library/Python/3.6/bin:$PATH
export PS1="\u@\h:\W$GIT_BRANCH\$ "
export SUDO_PS1="\u@\h:\W\$ "

alias ll='ls -la'
alias updatedb='sudo /usr/libexec/locate.updatedb'
alias ssh='ssh -o ServerAliveInterval=30'
