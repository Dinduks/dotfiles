setopt interactivecomments # Enable bash-style comments (with '#') in the CLI
set    HIST_IGNORE_SPACE

alias cp="cp -r"
alias d="docker"
alias gcc="gcc -Wall -ansi"
alias grep="grep --color=auto"
alias grepi="grep -i --color=auto"
alias less="less -r"
alias k="kubectl"
alias kall="kubectl get all"
alias kdel="kubectl delete"
alias kdes="kubectl describe"
alias klog="kubectl logs"
alias l="ls -alhG"
alias ll="ls -lhG"
alias o=xdg-open
alias path='echo -e ${PATH//:/\\n}'
alias pgrepi="pgrep -i"
alias reboot="systemctl reboot"
alias rgrep="grep -r --color=auto"
alias rgrepi="grep -ri --color=auto"
alias rspec="rspec --color"
alias treea="tree -a"
alias turnoff="sudo shutdown -h now"
alias wai="whoami"

apti       () { sudo aptitude install $1 }
aptr       () { sudo aptitude remove $1 }
apts       () { aptitude search $1 }
aptud      () { sudo apt-get update }
aptug      () { sudo apt-get upgrade }
cpstat     () { tar c "$1" | pv | tar x -C "$2" }
loop       () { while sleep 0.2; do $*; done; }
firstl     () { head -n 1 }
killport   () { fuser -k $1/tcp }
kmp        () { kill -9 `pgrep -i $*`; }
lastl      () { tail -n 1 }
mkcd       () { mkdir -p "$*"; cd "$*"; }
myip       () { /sbin/ifconfig | grep "inet " | grep -v "127.0.0.1" | awk '{printf $2 "\n"}' | sed "s/addr://"; }
neo4jkill  () { kill `ps aux | grep -i neo | grep -v grep | awk '{printf $2;}'` }
neo4jstart () { (cd ~/Applications/neo4j-community-1.9.4/ && bin/neo4j start) }
ql         () { qlmanage -p "$*" >& /dev/null; }
scheme-run () { scheme < $1 | grep ";Value:" | sed "s/;Value: /Result: /"; }
trash      () { command mv "$@" ~/.Trash }
use-java   () { export JAVA_HOME=`/usr/libexec/java_home -v 1.$1` }
weather    () { curl http://wttr.in/$1 }

export VISUAL=vim
export ZSH_THEME=robbyrussell
