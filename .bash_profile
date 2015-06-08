# Default
PATH=/usr/bin:/bin:/usr/sbin:/sbin
export PATH

# Custom
export RBENV_HOME=/Users/sunpech/.rbenv/shims
export ANDROID_HOME=/Users/sunpech/Development/adt-bundle-mac/sdk/platform-tools
export LOCAL_HOME=/Users/sunpech/bin
export POSTGRES_HOME=/Applications/Postgres.app/Contents/Versions/9.4/bin
export HEROKU_HOME=/usr/local/heroku/bin
export BREW_HOME=/usr/local/bin

export PATH=$PATH:$RBENV_HOME:$ANDROID_HOME:$LOCAL_HOME:$POSTGRES_HOME:$HEROKU_HOME:$BREW_HOME

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# rbenv
if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi

# Aliases
if [ -f ~/.dotfiles/.bash_aliases ]; then
 . ~/.dotfiles/.bash_aliases
fi

# Git tab completion
if [ -f ~/.dotfiles/.git-completion.bash ]; then
  source ~/.dotfiles/.git-completion.bash	
fi

# Colors
RED="\[\033[01;31m\]"
YELLOW="\[\033[01;33m\]"
GREEN="\[\033[01;32m\]"
BLUE="\[\033[01;34m\]"
LIGHT_RED="\[\033[0;31m\]"
LIGHT_GREEN="\[\033[0;32m\]"
WHITE="\[\033[1;37m\]"
LIGHT_GRAY="\[\033[0;37m\]"
COLOR_NONE="\[\033[0m\]"

# Prompt Stuff

# Git Aware (GA)
export GITAWAREPROMPT=~/.dotfiles/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh

# Custom GA prompt
#export PS1="\u@\h \w ${LIGHT_GREEN}\$git_branch${LIGHT_RED}\$git_dirty\[$txtrst\]\$ "

# Mac OS X default GA prompt
export PS1="\u@\h \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# Ubuntu Standard GA prompt
#export PS1="\${debian_chroot:+(\$debian_chroot)}\u@\h:\w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# Ubuntu Colorized GA prompt
#export PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# Non Git Aware prompt
# if [ -f ~/.dotfiles/.git-prompt.sh ]; then
#   source ~/.dotfiles/.git-prompt.sh
# fi
# PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '