## script for setting up useful preferences in ubuntu on my personal machine

# cs <dir>: combines cd <dir> and ls for simple navigation
echo '# CS: combines cd and ls in one easy command' >> ~/.bashrc
echo 'function cs () {' >> ~/.bashrc
echo '  cd "$@" && ls' >> ~/.bashrc
echo '}' >> ~/.bashrc

# gitclone <url> makes git clone easier
echo '# GITCLONE: makes git cloning easier and faster' >> ~/.bashrc
echo 'function gitclone () {' >> ~/.bashrc
echo '  git clone https://github.com/"$@"' >> ~/.bashrc
echo '}' >> ~/.bashrc

# Get vim
sudo apt-get install -y vim
# Set vim indent to four spaces
echo "#set four tabs to expand in vim" >> .vimrc
echo "set tabstop=4" >> .vimrc
echo "set expandtab" >> .vimrc

# Get autoconf & automake
sudo apt-get install autoconf
sudo apt-get install automake
