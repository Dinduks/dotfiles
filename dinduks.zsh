alias cp="cp -r"
alias gcc="gcc -Wall -ansi"
alias grep="grep --color=auto"
alias grepi="grep -i --color=auto"
alias less="less -r"
alias l="ls -alhG"
alias ll="ls -lhG"
alias pgrepi="pgrep -i"
alias rgrep="grep -r --color=auto"
alias rgrepi="grep -ri --color=auto"
alias rspec="rspec --color"
alias sshad="ssh dinduks@ssh.alwaysdata.com"
alias treea="tree -a"

kag () { echo $*; kill -9 `pgrep -i $*`; }
mkcd () { mkdir -p "$*"; cd "$*"; }
myip () { ifconfig | grep "inet " | grep -v "127.0.0.1" | awk '{printf $2 "\n"}'; }
scheme-run () { scheme < $1 | grep ";Value:" | sed "s/;Value: /Result: /"; }

export ZSH_THEME=robbyrussell
