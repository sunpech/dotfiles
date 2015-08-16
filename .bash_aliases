
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
alias l='ls -lah'
alias sp='source ~/.bash_profile'
alias rmdir="rm -fdr"
alias cl='clear'
alias df='df -h'
alias p='cd ~/Projects'
alias d='cd ~/Downloads'
alias h='history'
alias cd..='cd ..'                          # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias path='echo -e ${PATH//:/\\n}'

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
# alias subl='subl -n'
alias a='atom . &'
alias s='subl . &'

# Start server in current directory
#alias sserver='python -m SimpleHTTPServer 8000'
alias sserver='ruby -run -e httpd . -p 8000'

# Networking
alias myip='curl ip.appspot.com'                    # myip:         Public facing IP Address
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs


# Todo later
# if [ "$(uname -s)" == "Darwin" ]; then
# 	# Specific to Mac
#
#
#
# fi
