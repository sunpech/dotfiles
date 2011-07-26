
export PATH=/Users/sunpech/SDK/android-sdk-mac_86:$PATH
export PATH=/Users/sunpech/bin/mongo/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PATH=/Users/sunpech/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.


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

PS1="${WHITE}\n[${BLUE}\u${WHITE}@${LIGHT_RED}\h${WHITE}] \j ${YELLOW}(\d \T) ${LIGHT_GREEN}[\W$(__git_ps1 " (%s)")]${WHITE}\n! "

