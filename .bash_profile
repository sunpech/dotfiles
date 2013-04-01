
export PATH=/Users/sunpech/Development/adt-bundle-mac/sdk/platform-tools:$PATH
export PATH=/Users/sunpech/bin/mongo/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PATH=/Users/sunpech/bin:$PATH
export PATH=/usr/local/git/bin:$PATH
export PATH=/usr/local/Cellar/nginx/1.0.5/sbin:$PATH
export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"


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

# Git branch in prompt.
#parse_git_branch() {
#    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
#}

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
#export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Source https://github.com/jimeh/git-aware-prompt
export GITAWAREPROMPT=~/.dotfiles/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\u@\h \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
