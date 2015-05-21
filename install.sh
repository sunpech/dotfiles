cd ~/

# Make a backup, hey you never know...
if [ -f ~/.bash_profile ]; then
  mv ~/.bash_profile ~/.dotfiles/.bash_profile.bak
fi

ln -s ~/.dotfiles/.bash_profile ~/.bash_profile

# want to source it, but getting error
# source ~/.bash_profile