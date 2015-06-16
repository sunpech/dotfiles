
# Git Aliases
alias gst='git status --ignore-submodules'
alias gb='git branch'
alias gpo='git push origin'
alias gph='git push heroku'
alias gc='git commit -v'
alias gco='git checkout'
alias gca='git commit -v -a'
alias ga='git add'

# Other Aliases
alias ls='ls -G'
alias sp='source ~/.bash_profile'
alias rmdir="/bin/rm -fdr"
alias cl='clear'
alias df='df -h'
alias p='cd ~/Projects'
alias d='cd ~/Downloads'
alias a='atom . &'
alias s='subl . &'
alias h='history'
alias cd..='cd ..'

# Interfacelift Downloader Aliases
# Default
alias ild='interfacelift-downloader 2880x1800 ~/Copy/Wallpapers/interfacelift_2880x1800'
# MBPr 15"
alias ild-2880x1800='interfacelift-downloader 2880x1800 ~/Copy/Wallpapers/interfacelift_2880x1800'
# 1080p
alias ild-1080p='interfacelift-downloader 1080p ~/Copy/Wallpapers/interfacelift_1080p'
# 27" Display
alias ild-2560x1440='interfacelift-downloader 2560x1440 ~/Copy/Wallpapers/interfacelift_2560x1440'
# Nexus 7
alias ild-1920x1200='interfacelift-downloader 1920x1200 ~/Copy/Wallpapers/interfacelift_1920x1200'

# Editors
alias e='emacs'
alias subl='subl -n'

# Start server in current directory
#alias sserver='python -m SimpleHTTPServer 8000'
alias sserver='ruby -run -e httpd . -p 8000'

# Todo later
# if [ "$(uname -s)" == "Darwin" ]; then
# 	# Specific to Mac
#
#
#
# fi
