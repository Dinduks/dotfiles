alias ares="/etc/init.d/apache2 restart"
alias ast="/etc/init.d/apache2 status"
alias grep="grep --color=auto"
alias ll="ls -alh"
alias pac="php app/console"
alias rgrep="rgrep --color=auto"
alias rs="bundle exec rails server"
alias rspec="rspec --color"
alias s="./symfony"
alias sbal="./symfony doctrine:build --all --and-load --no-confirmation && s cc"
alias sshad="ssh dinduks@ssh.alwaysdata.com"

export EDITOR=/usr/bin/vim
TERM=xterm-color; export TERM

mkcd () { mkdir -p "$*"; cd "$*"; }

if [ $(whoami) != 'root' ]; then
  GIT_PS1_SHOWDIRTYSTATE=true
  GIT_PS1_SHOWUNTRACKEDFILES=true
  PS1='\[\e[01;33m\]\u@\H\[\e[00;32m\][\w]\[\e[0m\]\[\e[01;34m\]$(__git_ps1 "(%s)")\[\e[0m\] '
fi
