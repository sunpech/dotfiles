cd ~/

# Make a backup, hey you never know...
mv ~/.bash_profile ~/.dotfiles/.bash_profile.bak

ln -s ~/.dotfiles/.bash_profile .bash_profile

# want to source it, but getting error
# source ~/.bash_profile