## script for setting up useful preferences in ubuntu on my personal machine

# cs <dir>: combines cd <dir> and ls for simple navigation
echo "# combines cd and ls in one easy command" >> ~/.bashrc
echo "function cs () {" >> ./bashrc
echo "  cd "$@" && ls" >> ./bashrc
echo "}" >> ./bashrc

sudo apt-get install- -y vim

echo "#set four tabs to expand in vim" >> .vimrc
echo "set tabstop=4" >> .vimrc
echo "set expandtab" >> .vimrc
