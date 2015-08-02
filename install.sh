sudo aptitude -y install i3 i3lock xautolock vim zsh scrot imagemagick htop \
                         curl wget acpid pulseaudio unclutter

sudo curl https://raw.githubusercontent.com/Dinduks/change-execute-loop/master/cel -o /usr/local/bin/cel

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

for script in scripts/*; do
  sudo ln -s $PWD/$script /usr/local/bin
done

sudo ln -s /usr/local/bin/{i3lockscreen,lock}

sudo cp $PWD/systemd/i3lock.service /etc/systemd/system
sudo systemctl enable i3lock.service
sudo systemctl daemon-reload

sudo mkdir -p /etc/acpi
sudo mkdir -p /etc/acpi/events
for event in acpi/*; do
  sudo ln -s $PWD/$event /etc/acpi/events
done

ln -s $PWD/vim/.vim ~
ln -s $PWD/vim/.vimrc ~

ln -s $PWD/git/.gitconfig ~
ln -s $PWD/git/.gitignore_global ~

mkdir -p ~/.i3
ln -s $PWD/i3/config ~/.i3
ln -s $PWD/i3/.i3status.conf ~

ln -s $PWD/dinduks.zsh ~/.oh-my-zsh/custom

mkdir -p ~/Pictures/Screenshots

sudo usermod -a -G pulse dinduks
