# script for setting up useful preferences in ubuntu on my personal machine


HERE=$PWD


#======================#
#  BASHRC and PROFILE  #
#======================#

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

echo '# Current Tasks' >> ~/.bashrc     # TaskWarrior
echo 'echo' >> ~/.bashrc                #
echo 'echo "TASKS:"' >> ~/.bashrc       #
echo 'task next' >> ~/.bashrc           #



#==========#
#  SYSTEM  #
#==========#

# Make a .local directory
mkdir -p ~/.local

# install i3 and associated stuff
sudo apt-get install i3-wm dunst i3lock i3status suckless-tools -y

# Bitmap font install and configuration 
git clone https://github.com/Tecate/bitmap-fonts.git
mkdir -p ~/.bakfiles/etc/fonts/conf.d
sudo mv /etc/fonts/conf.d/10* ~/.bakfiles/etc/fonts/conf.d
sudo mv /etc/fonts/conf.d/70-no-bitmaps.conf ~/.bakfiles/etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/70-yes-bitmaps.conf /etc/fonts/conf.d
sudo dpkg-reconfigure fontconfig

# Make sure Nautilus doesn't launch gnome desktop to play nice with i3
gsettings set org.gnome.desktop.background show-desktop-icons false



#===============#
#   UTILITIES   #
#===============#

# System and Preferences
sudo apt-get install rxvt-unicode -y    # Urxvt (terminal)
sudo apt-get install tmux -y            # TMux  (terminal multiplexing)
sudo apt-get install autocutsel -y      # Copy/Paste
sudo apt-get install scrot -y           # Screenshot

# Productivity
sudo apt-get install magic-wormhole -y  # Magic Wormhole (file transfer)
sudo apt-get install taskwarrior -y     # TaskWarrior

# Development
sudo apt-get install python3-pip -y         # pip
sudo apt-get install rubber mupdf -y        # LaTeX compiler and easy pdf viewer
export $VIRTUALENV_PYTHON=/usr/bin/python3  # Default Python for venvs
pip install virtualenv virtualenvwrapper    #



#=======#
#  VIM  #
#=======#

PLUGIN_DIR=$HOME/.vim/bundle
AUTOLOAD_DIR=$HOME/.vim/autoload

# Pathogen
mkdir -p $AUTOLOAD_DIR $PLUGIN_DIR
curl -LSso $AUTOLOAD_DIR/pathogen.vim https://tpo.pe/pathogen.vim

# Plugins
pip install flake8                                                  # PEP8 linter
cd $PLUGIN_DIR
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git  # Syntax
git clone https://github.com/vimwiki/vimwiki.git                    # Vimwiki
cd $HOME



#================#
#  CONFIG FILES  #
#================#

CFG_FILE_DIR=$HOME/etc

cp $HERE/etc/ $CFG_FILE_DIR


# Make links (where apps expect them) to config files
mkdir -p ~/.config/i3
mkdir -p ~/.config/i3status
ln -s $CFG_FILE_DIR/i3 ~/.config/i3/config
ln -s $CFG_FILE_DIR/i3status ~/.config/i3status/config
ln -s $CFG_FILE_DIR/Xresources ~/.Xresources
ln -s $CFG_FILE_DIR/vimrc ~/.vimrc
ln -s $CFG_FILE_DIR/taskrc ~/.taskrc
ln -s $CFG_FILE_DIR/taskrc ~/.taskrc
ln -s $CFG_FILE_DIR/tmux ~/.tmux.conf



# Additional packages
# Tell me what to do
echo '---------------------- ALL DONE -----------------------'

# Get autoconf & automake
#sudo apt-get install autoconf
#sudo apt-get install automake
