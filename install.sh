function install_cel {
  if command_exists cel; then
    colored_echo "cel already installed. Skipping."; return;
  fi

  sudo curl https://raw.githubusercontent.com/Dinduks/change-execute-loop/master/cel -o /usr/local/bin/cel
  sudo chmod +x /usr/local/bin/cel
}

function install_hr {
  if command_exists hr; then
    colored_echo "hr already installed. Skipping."; return;
  fi

  sudo curl https://raw.githubusercontent.com/LuRsT/hr/master/hr -o /usr/local/bin/hr
  sudo chmod +x /usr/local/bin/hr
}

function setup_scripts {
  for script in scripts/*; do
    sudo ln -s $PWD/$script /usr/local/bin &> /dev/null
  done
}

function setup_vim {
  ln -s $PWD/vim/.vim ~ &> /dev/null
  ln -s $PWD/vim/.vimrc ~ &> /dev/null
}

function setup_git {
  ln -s $PWD/git/.gitconfig ~ &> /dev/null
  ln -s $PWD/git/.gitignore_global ~ &> /dev/null
}

function setup_zsh_config {
  ln -s $PWD/dinduks.zsh ~/.oh-my-zsh/custom &> /dev/null
}

# From http://stackoverflow.com/a/3931779
command_exists () {
  type "$1" &> /dev/null;
}

colored_echo () {
  echo -e "\e[33m$1\e[39m"
}

function run {
  colored_echo "Running $1..."
  eval $1
  colored_echo "Finished running $1.\n"
}

run "setup_vim"
run "setup_git"
run "setup_zsh_config"
run "install_cel"
run "install_hr"
run "setup_scripts"
