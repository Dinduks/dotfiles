# Enable bash-style comments (with '#') in the CLI
setopt interactivecomments

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
alias treea="tree -a"
alias turnoff="sudo shutdown -h now"

firstl     () { head -n 1 }
kmp        () { kill -9 `pgrep -i $*`; }
lastl      () { tail -n 1 }
mkcd       () { mkdir -p "$*"; cd "$*"; }
myip       () { /sbin/ifconfig | grep "inet " | grep -v "127.0.0.1" | awk '{printf $2 "\n"}' | sed "s/addr://"; }
neo4jkill  () { kill `ps aux | grep -i neo | grep -v grep | awk '{printf $2;}'` }
neo4jstart () { (cd ~/Applications/neo4j-community-1.9.4/ && bin/neo4j start) }
scheme-run () { scheme < $1 | grep ";Value:" | sed "s/;Value: /Result: /"; }
use-java   () { export JAVA_HOME=`/usr/libexec/java_home -v 1.$1` }

export JAVA_OPTS="-Xms2048m -Xmx2048m -XX:MaxPermSize=2048m -Dfile.encoding=UTF-8"
export ZSH_THEME=robbyrussell
