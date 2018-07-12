### script for setting up useful preferences in ubuntu on my personal machine
HERE=$PWD

# sample command for setting up a rotated screen:
echo 'xrandr --output eDP-1-1 --mode 1920x1080 --pos 0x480 --rotate normal --output HDMI-1-1 --mode 1920x1200 --pos 1920x0 --rotate left' >> ~/.profile

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


# Make a .local directory
mkdir -p ~/.local

# Magic Wormhole for transfering files easily
sudo apt-get install magic-wormhole -y

# Python stuff
# Install pip
sudo apt-get install -y python3-pip

# install i3 and associated stuff
sudo apt-get install i3-wm dunst i3lock i3status suckless-tools -y

# Install productivity tools for LaTeX and MarkDown
sudo apt-get install rubber mupdf -y

# Install URxvt
sudo apt-get install rxvt-unicode -y

# Install task
sudo apt-get install taskwarrior -y
echo '# Current Tasks' >> ~/.bashrc
echo 'echo' >> ~/.bashrc
echo 'echo "TASKS:"' >> ~/.bashrc
echo 'task next' >> ~/.bashrc


# Useful system stuff
sudo apt-get install autocutsel -y  # Copy/Paste
sudo apt-get install scrot -y       # screenshot

# Font stuff
git clone https://github.com/Tecate/bitmap-fonts.git
mkdir -p ~/.bakfiles/etc/fonts/conf.d
sudo mv /etc/fonts/conf.d/10* ~/.bakfiles/etc/fonts/conf.d
sudo mv /etc/fonts/conf.d/70-no-bitmaps.conf ~/.bakfiles/etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/70-yes-bitmaps.conf /etc/fonts/conf.d
sudo dpkg-reconfigure fontconfig


# Vim
# pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Vim Plugins
cd ~/.vim/bundle
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
git clone https://github.com/vimwiki/vimwiki.git
pip install flake8  # PEP8 linter
cd $HERE


# Copy files into etc folder
mkdir -p ~/etc/
cp ./etc/* ~/etc/
#cp ./etc/i3 ~/etc/i3
#cp ./etc/i3status ~/etc/i3status
#cp ./etc/Xresources ~/etc/Xresources
#cp ./etc/vimrc ~/.vimrc
#cp ./etc/taskrc ~/.taskrc

# Make links (where apps expect them) to config files
mkdir -p ~/.config/i3
mkdir -p ~/.config/i3status
ln -s ~/etc/i3 ~/.config/i3/config
ln -s ~/etc/i3status ~/.config/i3status/config
ln -s ~/etc/Xresources ~/.Xresources
ln -s ~/etc/vimrc ~/.vimrc
ln -s ~/etc/taskrc ~/.taskrc

# Make sure Nautilus doesn't launch gnome desktop to play nice with i3
gsettings set org.gnome.desktop.background show-desktop-icons false

# Use python3 as default in virtual environments
export $VIRTUALENV_PYTHON=/usr/bin/python3
pip install virtualenv virtualenvwrapper

	
# Additional packages
# Tell me what to do
echo '---------------------- ALL DONE -----------------------'

# Get autoconf & automake
#sudo apt-get install autoconf
#sudo apt-get install automake
