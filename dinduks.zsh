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
alias mkdir="mkdir -p"
alias o=xdg-open
alias path='echo -e ${PATH//:/\\n}'
alias reboot="systemctl reboot"
alias rgrep="grep -r --color=auto"
alias rgrepi="grep -ri --color=auto"
alias rspec="rspec --color"
alias treea="tree -a"
alias turnoff="sudo shutdown -h now"

cpstat     () { tar c "$1" | pv | tar x -C "$2" }
loop       () { while sleep 0.2; do $*; done; }
killport   () { fuser -k $1/tcp }
kmp        () { kill -9 `pgrep -i $*`; }
mkcd       () { mkdir -p "$*"; cd "$*"; }
myip       () { /sbin/ifconfig | grep "inet " | grep -v "127.0.0.1" | awk '{printf $2 "\n"}' | sed "s/addr://"; }
use-java   () { export JAVA_HOME=`/usr/libexec/java_home -v 1.$1` }
weather    () { curl http://wttr.in/$1 }
memesay    () { echo $*|sed -r "s/(.)/\1 /g"|sed 's/^/_/'|sed 's/ $/_/'|sed 's/ \+/ /g'|tr a-z A-Z|xclip -selection clipboard }

export VISUAL=vim
export ZSH_THEME=pygmalion

export GOPATH=/home/dinduks/workspace/work/go
export GOBIN=/home/dinduks/workspace/work/go/bin
export PATH=$PATH:$GOPATH:$GOBIN

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
