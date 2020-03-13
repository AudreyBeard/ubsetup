if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/.virtualenvwrapper-projects
export VIRTUALENVWRAPPER_PYTHON=$(which python3)
source /usr/local/bin/virtualenvwrapper.sh

# CS: combines cd and ls in one easy command
function cs () {
  cd "$@" && ls
}
# GITCLONE: makes git cloning easier and faster
function gitclone-https () {
  git clone https://github.com/"$@"
}
# GITCLONE: makes git cloning easier and faster
function gitclone-ssh () {
  git clone git@github.com:"$@".git
}
# Show tasks when opening a terminal
#task

workon Py3.7.4

export CLICOLOR=1
export LSCOLORS=GxBxCxDxexegedabagaced

# Figure out which git branch we're in
parse_git_branch() {
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Determine active Python virtualenv details
parse_virtual_environment() {
  if test -z "$VIRTUAL_ENV" ; then
      PYTHON_VIRTUALENV=""
  else
      PYTHON_VIRTUALENV="(`basename \"$VIRTUAL_ENV\"`) "
  fi
}


parse_virtual_environment
#export PS1="\e[0;35m\u@\h:\e[1;34m\w\e[0;32m\$(parse_git_branch)\e[0;37m $ "
export PS1="$PYTHON_VIRTUALENV\e[0;35m\u@avocado:\e[1;34m\w\e[0;32m\$(parse_git_branch)\e[0;37m $ "

export PATH="/usr/local/Cellar/vim/8.1.2050/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

function tasksync(){
    HERE=$PWD
    cd ~
    python ~/code/trellowarrior/trellowarrior.py sync "$@"
    cd $HERE
}

# Stuff for Jekyll for my GitHub Pages
export PATH="/usr/local/opt/ruby/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"
