# Default
PATH=/usr/bin:/bin:/usr/sbin:/sbin
export PATH

# Custom
export DOTNET_HOME=/usr/local/share/dotnet
export RBENV_HOME=/Users/sunpech/.rbenv/shims
export ANDROID_HOME=/Users/sunpech/Development/adt-bundle-mac/sdk/platform-tools
export LOCAL_HOME=/Users/sunpech/bin
export POSTGRES_HOME=/Applications/Postgres.app/Contents/Versions/9.6/bin
export HEROKU_HOME=/usr/local/heroku/bin
export BREW_HOME=/usr/local/bin

export PATH=$LOCAL_HOME:$DOTNET_HOME:$BREW_HOME:$RBENV_HOME:$POSTGRES_HOME:$HEROKU_HOME:$ANDROID_HOME:$PATH

# Use iTerm, but in using Terminal
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Set default editor
export EDITOR=/usr/bin/vim

# rbenv
if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi

# Aliases
if [ -f ~/.dotfiles/bash_aliases ]; then
  . ~/.dotfiles/bash_aliases
fi

# Git tab completion
if [ -f ~/.dotfiles/.git-completion.bash ]; then
  source ~/.dotfiles/.git-completion.bash
fi

# Colors
if [ -f ~/.dotfiles/bash_colors ]; then
  . ~/.dotfiles/bash_colors
fi

function title {
  echo -ne "\033]0;"$*"\007"
}

# DotNet Version Manager
if [ -f /usr/local/bin/dnvm.sh ]; then
  source dnvm.sh
fi

# Prompt stuff

# Git Aware (GA)
#export GITAWAREPROMPT=~/.dotfiles/git-aware-prompt
#source $GITAWAREPROMPT/main.sh

# Mac OS X default GA prompt
#export PS1="\u@\h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "


# configure the git-prompt.sh script
# source: https://corlewsolutions.com/articles/article-118-enhance-your-git-prompt
if [[ -f ~/.dotfiles/git-prompt.sh ]]; then
  source ~/.dotfiles/git-prompt.sh
fi
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
# MacOS default git prompt
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \W\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '




# Ubuntu Standard GA prompt
#export PS1="\${debian_chroot:+(\$debian_chroot)}\u@\h:\w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# Ubuntu Colorized GA prompt
#export PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# Non Git Aware prompt
#if [ -f ~/.dotfiles/git-prompt.sh ]; then
#  source ~/.dotfiles/git-prompt.sh
#fi
#export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
#

# iterm2 Beta 3 Badge
# bash: Place this in .bashrc.
#function iterm2_print_user_vars() {
#  iterm2_set_user_var gitBranch $((git branch 2> /dev/null) | grep \* | cut -c3-)
#  }

#test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash
#
toilet -f smblock --filter border $HOSTNAME
