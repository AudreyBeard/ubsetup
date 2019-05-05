### script for setting up useful preferences in ubuntu on my personal machine
HERE=$PWD

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

echo '# Show tasks when opening a terminal' >> ~/.bashrc
echo 'task' >> ~/.bashrc

# Make a .local directory
mkdir -p ~/.local

# Install systemwide stuff
./install-system.sh
cd $HERE

# Font stuff
git clone https://github.com/Tecate/bitmap-fonts.git ~/.local/bitmap-fonts
mkdir -p ~/.bakfiles/etc/fonts/conf.d
sudo mv /etc/fonts/conf.d/10* ~/.bakfiles/etc/fonts/conf.d
sudo mv /etc/fonts/conf.d/70-no-bitmaps.conf ~/.bakfiles/etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/70-yes-bitmaps.conf /etc/fonts/conf.d
sudo dpkg-reconfigure fontconfig

# Copy and link all config files
./copy-config.sh
cd $HERE

# Vim stuff
./setup-vim.sh
cd $HERE

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
