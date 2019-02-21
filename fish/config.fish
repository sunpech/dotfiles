
# Paths to your tackle
set tacklebox_path ~/.tackle ~/.tacklebox

# Theme
#set tacklebox_theme entropy

# Which modules would you like to load? (modules can be found in ~/.tackle/modules/*)
# Custom modules may be added to ~/.tacklebox/modules/
# Example format: set tacklebox_modules virtualfish virtualhooks

# Which plugins would you like to enable? (plugins can be found in ~/.tackle/plugins/*)
# Custom plugins may be added to ~/.tacklebox/plugins/
# Example format: set tacklebox_plugins python extract

# Load Tacklebox configuration
. ~/.tacklebox/tacklebox.fish

# Editor
set -Ux EDITOR vim

# Paths
set -x DOTNET_HOME /usr/local/share/dotnet
#set -x -U GOPATH $HOME/go
#set -x -U GOBIN $GOPATH/bin
#set -x GO_ROOT /usr/local/opt/go/libexec
set -x RBENV_HOME /Users/sunpech/.rbenv/shims
set -x ANDROID_HOME /Users/sunpech/Library/Android/sdk/platform-tools
set -x LOCAL_HOME /Users/sunpech/bin
set -x POSTGRES_HOME /Applications/Postgres.app/Contents/Versions/latest/bin
#set -x HEROKU_HOME /usr/local/bin/heroku
set -x BREW_HOME /usr/local/bin

#set -g -x PATH $RBENV_HOME $BREW_HOME $DOTNET_HOME $GOPATH $GOBIN $ANDROID_HOME $LOCAL_HOME $POSTGRES_HOME $HEROKU_HOME $PATH
set -g -x PATH $RBENV_HOME $BREW_HOME $DOTNET_HOME $ANDROID_HOME $LOCAL_HOME $POSTGRES_HOME $PATH

# Customizations (bobthefish Theme)
set -g theme_display_git yes
#set -g theme_display_git_untracked no
#set -g theme_display_git_ahead_verbose yes
#set -g theme_git_worktree_support yes
#set -g theme_display_vagrant yes
#set -g theme_display_docker_machine no
set -g theme_display_hg yes
set -g theme_display_virtualenv no
set -g theme_display_ruby no
set -g theme_display_user yes
#set -g theme_display_vi no
#set -g theme_display_date no
#set -g theme_display_cmd_duration yes
#set -g theme_title_display_process yes
#set -g theme_title_display_path no
#set -g theme_title_use_abbreviated_path no
#set -g theme_date_format "+%a %H:%M"
#set -g theme_avoid_ambiguous_glyphs yes
#set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
#set -g theme_show_exit_status yes
#set -g default_user your_normal_user
set -g theme_color_scheme dark
#set -g fish_prompt_pwd_dir_length 0
#set -g theme_project_dir_length 1


# Aliases

# Git Aliases
alias gst='git status --ignore-submodules'
alias gb='git branch'
alias gpo='git push origin'
alias gph='git push heroku'
alias gc='git commit -v'
alias gco='git checkout'
alias gca='git commit -v -a'
alias ga='git add'

alias cl='clear'

# Start web server in directory
alias sserver='ruby -run -e httpd . -p 8000'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sunpech/Development/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/sunpech/Development/google-cloud-sdk/path.fish.inc'; else; . '/Users/sunpech/Development/google-cloud-sdk/path.fish.inc'; end; end

# Paths to your tackle
set tacklebox_path ~/.tackle ~/.tacklebox

# Theme
#set tacklebox_theme entropy

# Which modules would you like to load? (modules can be found in ~/.tackle/modules/*)
# Custom modules may be added to ~/.tacklebox/modules/
# Example format: set tacklebox_modules virtualfish virtualhooks

# Which plugins would you like to enable? (plugins can be found in ~/.tackle/plugins/*)
# Custom plugins may be added to ~/.tacklebox/plugins/
# Example format: set tacklebox_plugins python extract

# Load Tacklebox configuration
. ~/.tacklebox/tacklebox.fish

