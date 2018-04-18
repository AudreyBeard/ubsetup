### script for setting up useful preferences in ubuntu on my personal machine

# cs <dir>: combines cd <dir> and ls for simple navigation
echo '# CS: combines cd and ls in one easy command' >> ~/.bashrc
echo 'function cs () {' >> ~/.bashrc
echo '  cd "$@" && ls' >> ~/.bashrc
echo '}' >> ~/.bashrc

# gitclone <url> makes git clone easier
echo '# GITCLONE: makes git cloning easier and faster' >> ~/.bashrc
echo 'function gitclone-https () {' >> ~/.bashrc
echo '  git clone https://github.com/"$@"' >> ~/.bashrc
echo '}' >> ~/.bashrc

# gitclone <url> makes git clone easier
echo '# GITCLONE: makes git cloning easier and faster' >> ~/.bashrc
echo 'function gitclone-ssh () {' >> ~/.bashrc
echo '  git clone git@github.com:"$@".git' >> ~/.bashrc
echo '}' >> ~/.bashrc

echo "alias gitclone='gitclone-https'" >> ~/.bashrc
. ~/.bashrc


# Make a .local directory
mkdir -p .local


# Python stuff
# Install pip
sudo apt-get install -y python3-pip

# install i3 and associated stuff
sudo apt-get install i3-wm
sudo apt-get install dunst
sudo apt-get install i3lock
sudo apt-get install i3status
sudo apt-get install suckless-tools

# Install productivity tools for LaTeX files
sudo apt-get install rubber
sudo apt-get install mudpf

# Install URxvt
sudo apt-get install rxvt-unicode

# Copy files into etc folder
mkdir -p ~/etc/
cp ./etc/i3 ~/etc/i3
cp ./etc/i3status ~/etc/i3status
cp ./etc/Xresources ~/etc/Xresources
cp ./etc/vimrc ~/.vimrc

# Make links (where apps expect them) to config files
ln -s ~/etc/Xresources ~/.Xresources
ln -s ~/etc/i3 ~/.config/i3/config
ln -s ~/etc/i3status ~/.config/i3status/config
ln -s ~/etc/vimrc ~/.vimrc

# Make sure Nautilus doesn't launch gnome desktop to play nice with i3
gsettings set org.gnome.desktop.background show-desktop-icons false

# Use python3 as default in virtual environments
export $VIRTUALENV_PYTHON=/usr/bin/python3

	
# Additional packages
# Tell me what to do
echo '---------------------- ALL DONE -----------------------'
echo 'Go download f.lux or redshift, then make it autostart with .profile'

# Get autoconf & automake
#sudo apt-get install autoconf
#sudo apt-get install automake
