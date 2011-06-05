
#echo PATH="/opt/local/bin:/opt/bin:$PATH"

# MacPorts Installer addition on 2010-05-09_at_19:42:35: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=/Users/sunpech/SDK/android-sdk-mac_86:$PATH
export PATH=/Users/sunpech/bin/mongo/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PATH=/Users/sunpech/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.


export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
# export LSCOLORS=ExFxCxDxBxegedabagacad


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
#original
#export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
#PS1='[\W$(__git_ps1 " (%s)")]\$ '
#export PS1="[\d \t \w]\n\u@\h: "

#PS1="\n<\[\033[0;32m\]\h\[\033[0m\]:\[\033[0;37m\]\u\[\033[0m\]> \j [\$(date +%m-%d\" \"%H:%M)] \w (\[\033[0;36m\]\$(/Users/sunpech/bin/TBytes.sh) Mb\[\033[0m\])\n! "
#customized (need to fix...)

#PS1="\n[\[\033[0;33m\]\u\[\033[0m\]@\[\033[0;31m\]\h\[\033[0m\]] \j (\d \T) \033[0;32m\]\w\033[0m\] [\W$(__git_ps1 " (%s)")]\n! "
PS1="${WHITE}\n[${BLUE}\u${WHITE}@${LIGHT_RED}\h${WHITE}] \j ${YELLOW}(\d \T) ${LIGHT_GREEN}[\W$(__git_ps1 " (%s)")]${WHITE}\n! "

