sudo aptitude -y install i3 i3lock xautolock vim zsh scrot imagemagick htop \
                         curl wget acpid

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
sudo ln -s $PWD/acpi/fkey-lock    /etc/acpi/events
sudo ln -s $PWD/acpi/fkey-lock.sh /etc/acpi
sudo ln -s $PWD/acpi/volkey-mute  /etc/acpi/events
sudo ln -s $PWD/acpi/volkey-up    /etc/acpi/events
sudo ln -s $PWD/acpi/volkey-down  /etc/acpi/events

ln -s $PWD/vim/.vim ~
ln -s $PWD/vim/.vimrc ~

ln -s $PWD/git/.gitconfig ~
ln -s $PWD/git/.gitignore_global ~

mkdir -p ~/.i3
ln -s $PWD/i3/config ~/.i3
ln -s $PWD/i3/.i3status.conf ~

ln -s $PWD/dinduks.zsh ~/.oh-my-zsh/custom
