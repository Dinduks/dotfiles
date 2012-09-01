alias ares="/etc/init.d/apache2 restart"
alias ast="/etc/init.d/apache2 status"
alias grep="grep --color=auto"
alias less="less -r"
alias ll="ls -alh --color=always"
alias lld="ls -alhd --color=always */ .*/"
alias pac="php app/console"
alias rgrep="rgrep --color=auto"
alias rs="bundle exec rails server"
alias rspec="rspec --color"
alias s="./symfony"
alias sbal="./symfony doctrine:build --all --and-load --no-confirmation && s cc"
alias sshad="ssh dinduks@ssh.alwaysdata.com"

export EDITOR=/usr/bin/vim
export TERM=screen-256color

mkcd () { mkdir -p "$*"; cd "$*"; }
apti () { aptitude install "$*"; }
apts () { aptitude search  "$*"; }

if [ $(whoami) != 'root' ]; then
  GIT_PS1_SHOWDIRTYSTATE=true
  GIT_PS1_SHOWUNTRACKEDFILES=true
  PS1='\[\e[01;33m\]\u@\H\[\e[00;32m\][\w]\[\e[0m\]\[\e[01;34m\]$(__git_ps1 "(%s)")\[\e[0m\] '
fi
