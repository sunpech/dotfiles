export PATH=/Users/sunpech/.rbenv/shims:$PATH
export PATH=/Users/sunpech/Development/adt-bundle-mac/sdk/platform-tools:$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PATH=/Users/sunpech/bin:$PATH
export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"

# Ruby on Rails Settings
# Setup for chruby
if [[ -e /usr/local/opt/chruby ]]; then
  source /usr/local/opt/chruby/share/chruby/chruby.sh
  source /usr/local/opt/chruby/share/chruby/auto.sh
  chruby $(cat ~/.ruby-version)
fi

# rbenv
if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# SET ALIASES
if [ -f ~/.dotfiles/.bash_aliases ]; then
 . ~/.dotfiles/.bash_aliases
fi

# Git tab completion
if [ -f ~/.dotfiles/.git-completion.bash ]; then
  source ~/.dotfiles/.git-completion.bash	
fi


#PROMPT STUFF
RED="\[\033[01;31m\]"
YELLOW="\[\033[01;33m\]"
GREEN="\[\033[01;32m\]"
BLUE="\[\033[01;34m\]"
LIGHT_RED="\[\033[0;31m\]"
LIGHT_GREEN="\[\033[0;32m\]"
WHITE="\[\033[1;37m\]"
LIGHT_GRAY="\[\033[0;37m\]"
COLOR_NONE="\[\033[0m\]"

# Source https://github.com/jimeh/git-aware-prompt
export GITAWAREPROMPT=~/.dotfiles/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
#export PS1="\u@\h \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
export PS1="${LIGHT_GRAY}\u@\h \w ${LIGHT_GREEN}\$git_branch${LIGHT_RED}\$git_dirty\[$txtrst\]\$ "
 
# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"

export PATH
