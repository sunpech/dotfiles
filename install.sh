cd ~/

# Make a backup, hey you never know...
if [ -f ~/.bash_profile ]; then
  mv ~/.bash_profile ~/.bash_profile.bak
fi

ln -s ~/.dotfiles/bash_profile ~/.bash_profile

if [ -f ~/.vimrc ]; then
  mv ~/.vimrc ~/.vimrc.bak
fi

ln -s ~/.dotfiles/.vim/vimrc ~/.vimrc

# want to source it, but getting error
# source ~/.bash_profile

# Other Mac setup

# disable Apple Photos from auto-launching when plugging in sdcard.
# See: http://petapixel.com/2015/12/21/stop-apple-photos-from-auto-launching-in-os-x-with-one-command/
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool YES
