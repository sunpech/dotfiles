cd ~/

# Make backups
if [ -f ~/.bash_profile ]; then
  mv ~/.bash_profile ~/.bash_profile.bak
fi

if [ -f ~/.vimrc ]; then
  mv ~/.vimrc ~/.vimrc.bak
fi

########################
# Make dynamic links
########################
ln -s ~/.dotfiles/bash_profile ~/.bash_profile
ln -s ~/.dotfiles/fish/* ~/.config/fish/
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/config/nvim ~/.config/nvim/
#ln -s ~/.dotfiles/vim/bundle ~/.vim/bundle

# Add for .Net Core
# ln -s ~/.dotfiles/vscode/launcher.json ~/.vscode/launcher.json
# ln -s ~/.dotfiles/vscode/tasks.json ~/.vscode/tasks.json

# want to source it, but getting error
# source ~/.bash_profile

# Other Mac setup

# disable Apple Photos from auto-launching when plugging in sdcard.
# See: http://petapixel.com/2015/12/21/stop-apple-photos-from-auto-launching-in-os-x-with-one-command/
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool YES
