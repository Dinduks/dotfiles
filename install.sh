function install_git {
  sudo pacman -S --needed git
}

function install_yaourt {
  cd /tmp
  git clone https://aur.archlinux.org/package-query.git
  cd package-query
  makepkg -si
  cd ..
  git clone https://aur.archlinux.org/yaourt.git
  cd yaourt
  makepkg -si

  yaourt -Syu --devel --aur
}

function install_user_programs {
  yaourt -S --needed i3-gaps-git i3lock zsh xautolock scrot imagemagick \
    htop curl wget unclutter awk sysstat feh openssh gedit xclip compton rofi \
    pavucontrol shutter arandr acpi acpid redshift-git gedit libreoffice \
    thefuck tree ttf-dejavu ttf-arabeyes-fonts slack-desktop alsa-utils dunst \
    cmus-git libmad flac cmusfm xorg-xmodmap xorg-server xorg-xinit openssh \
    the_silver_searcher spotify xorg-xev redshift-gtk-git nautilus pv \
    rxvt-unicode google-chrome thunderbird i3blocks weechat \
    telegram-desktop-bin xorg-xrdb pkgfile pasystray pulseaudio \
    linux-manpages ttf-font-awesome network-manager-applet xorg-xwininfo \
    dwb-git jdk8-openjdk
}

function install_cel {
  sudo curl https://raw.githubusercontent.com/Dinduks/change-execute-loop/master/cel -o /usr/local/bin/cel
  sudo chmod +x /usr/local/bin/cel
}

function install_ohmyzsh {
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

function install_hr {
  sudo curl https://raw.githubusercontent.com/LuRsT/hr/master/hr -o /usr/local/bin/hr
  sudo chmod +x /usr/local/bin/hr
}

function setup_cron_jobs {
  for job in cron.d/*; do
    sudo cp $PWD/$job /etc/cron.d
  done
}

function setup_scripts {
  for script in scripts/*; do
    sudo ln -s $PWD/$script /usr/local/bin
  done
}

function setup_i3lock {
  sudo ln -s /usr/local/bin/{i3lockscreen,lock}
  sudo cp $PWD/systemd/i3lock.service /etc/systemd/system
  sudo systemctl enable i3lock.service
  sudo systemctl daemon-reload
}

function setup_vim {
  ln -s $PWD/vim/.vim ~
  ln -s $PWD/vim/.vimrc ~
}

function setup_git {
  ln -s $PWD/git/.gitconfig ~
  ln -s $PWD/git/.gitignore_global ~
}

function create_screenshots_dir {
  mkdir -p ~/Pictures/Screenshots
}

function setup_xdefaults {
  ln -s /home/dinduks/dotfiles/.Xdefaults ~
  xrdb ~/.Xdefaults
}

function setup_i3_config {
  mkdir -p ~/.i3
  ln -s $PWD/i3/config ~/.i3
  ln -s $PWD/i3/.i3blocks.conf ~
}

function setup_zsh_config {
  ln -s $PWD/dinduks.zsh ~/.oh-my-zsh/custom
}

function setup_urxvt_config {
  rm ~/.urxvt
  ln -s $PWD/urxvt ~/.urxvt
}

function setup_mimeapps {
  mkdir -p ~/.local/share/applications
  mv ~/.local/share/applications/mimeapps.list{,--} 2> /dev/null
  ln -s $PWD/mimeapps.list ~/.local/share/applications
}

function setup_compton_config {
  ln -s $PWD/compton.conf ~/.compton.conf
}

function setup_dunst_config {
  mkdir -p $HOME/.config/dunst
  ln -s $PWD/config/dunst/dunstrc ~/.config/dunst/dunstrc
}

function run {
  echo -e "\e[33mRunning $1...\e[39m"
  eval $1
  echo -e "\e[33mFinished running $1.\e[39m\n"
}

run "install_git"
run "install_yaourt"
run "install_user_programs"
run "install_cel"
run "install_ohmyzsh"
run "install_hr"
run "setup_cron_jobs"
run "setup_scripts"
run "setup_vim"
run "setup_git"
run "create_screenshots_dir"
run "setup_xdefaults"
run "setup_dunst_config"
run "setup_mimeapps"
run "setup_compton_config"
run "setup_i3_config"
run "setup_zsh_config"
run "setup_urxvt_config"
run "setup_i3lock"
