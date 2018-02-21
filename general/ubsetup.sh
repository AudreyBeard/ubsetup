## script for setting up useful preferences in ubuntu on my personal machine

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
echo '  git clone git@github.com/"$@".git' >> ~/.bashrc
echo '}' >> ~/.bashrc

. ~/.bashrc

# Get vim
sudo apt-get install -y vim
# Set vim indent to four spaces
echo "set tabstop=4" >> ~/.vimrc
echo "set expandtab" >> ~/.vimrc
# Show line numbers
echo "set number" >> ~/.vimrc
# Set shift width to four spaces
echo "set sw=4" >> ~/.vimrc
. ~/.vimrc

# Make a .local directory
mkdir -p .local

# Install pip
sudo apt-get install -y python3-pip
sudo apt-get install i3-wm
sudo apt-get install dunst
sudo apt-get install i3lock
sudo apt-get install i3status
sudo apt-get install suckless-tools


# Use python3 as default in virtual environments
export $VIRTUALENV_PYTHON=/usr/bin/python3

	

# Tell me what to do
echo '---------------------- ALL DONE -----------------------'
echo 'Go download f.lux, then make it autostart with .profile'

# Get autoconf & automake
#sudo apt-get install autoconf
#sudo apt-get install automake
