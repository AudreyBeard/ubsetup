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

echo "alias gitclone='gitclone-https'" >> ~/.bash_aliases
. ~/.bashrc


# Make a .local directory
mkdir -p ~/.local


# Python stuff
# Install pip
sudo apt-get install -y python3-pip

# install i3 and associated stuff
sudo apt-get install i3-wm dunst i3lock i3status suckless-tools -y

# Install productivity tools for LaTeX and MarkDown
sudo apt-get install rubber mupdf -y
pip install grip

# Install URxvt
sudo apt-get install rxvt-unicode -y

# Install task
sudo apt-get install taskwarrior -y

# Useful system stuff
sudo apt-get install feh -y         # Background
sudo apt-get install autocutsel -y  # Copy/Paste
sudo apt-get install scrot -y       # screenshot

# Font stuff
cd ~/code; git clone https://github.com/Tecate/bitmap-fonts.git
cd ubsetup/general
mkdir -p ~/.bakfiles/etc/fonts/conf.d
sudo mv /etc/fonts/conf.d/10* ~/.bakfiles/etc/fonts/conf.d
sudo mv /etc/fonts/conf.d/70-no-bitmaps.conf ~/.bakfiles/etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/70-yes-bitmaps.conf /etc/fonts/conf.d
xset fp+ /usr/share/fonts/bitmap/bitocra
xset fp+ /usr/share/fonts/bitmap/gohufont
sudo dpkg-reconfigure fontconfig

# Vim things


# Copy files into etc folder
mkdir -p ~/etc/
cp ./etc/i3 ~/etc/i3
cp ./etc/i3status ~/etc/i3status
cp ./etc/Xresources ~/etc/Xresources
cp ./etc/vimrc ~/.vimrc
cp ./etc/taskrc ~/.taskrc

# Make links (where apps expect them) to config files
ln -s ~/etc/Xresources ~/.Xresources
mkdir -p ~/.config/i3
ln -s ~/etc/i3 ~/.config/i3/config
mkdir -p ~/.config/i3status
ln -s ~/etc/i3status ~/.config/i3status/config
ln -s ~/etc/vimrc ~/.vimrc
ln -s ~/etc/taskrc ~/.taskrc

# Make sure Nautilus doesn't launch gnome desktop to play nice with i3
gsettings set org.gnome.desktop.background show-desktop-icons false

	
# Additional packages
# Tell me what to do
echo '---------------------- ALL DONE -----------------------'
echo 'Go download f.lux or redshift, then make it autostart with .profile'

# Get autoconf & automake
#sudo apt-get install autoconf
#sudo apt-get install automake
