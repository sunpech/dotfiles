cd ~/

####################################################
# Create file backups
# Create directories if they do not exist
# Create symlinks for files/folder in dotfiles to user directory
####################################################

# Config folder
echo "Config folder";
if [ ! -d ~/.config ] && echo "Directory ~./config DOES NOT exist. Creating directory..."; then
  mkdir ~/.config
fi

# Alacritty Directory
if [ ! -d ~/.config/alacritty ] && echo "Directory ~./config/alacritty DOES NOT exist. Creating directory..."; then
  mkdir ~/.config/alacritty
fi
ln -s ~/.dotfiles/config/alacritty/* ~/.config/alacritty/

# bash_profile File
echo "Bash";
if [ -f ~/.bash_profile ] && echo "File ~/.bash_profile exists. Creating backup..."; then
  mv ~/.bash_profile ~/.bash_profile.bak
fi
ln -s ~/.dotfiles/bash_profile ~/.bash_profile

# Fish shell Directory
echo "Fish shell";
if [ ! -d ~/.config/fish ] && echo "Directory ~/.config/fish DOES NOT exist. Creating directory..."; then
  mkdir ~/.config/fish
fi
ln -s ~/.dotfiles/fish/* ~/.config/fish/

# ZSH File
echo "ZSH":
if [ -f ~/.zshrc ] && echo "File ~/.zshrc exists. Creating backup..."; then
  mv ~/.zshrc ~/.zshrc.bak
fi
ln -s ~/.dotfiles/zshrc ~/.zshrc
# ZSH Directory (old)
#if [ ! -d ~/.oh-my-zsh ] && echo "Directory ~/.oh-my-zsh DOES NOT exist. Creating directory... "; then
#  mkdir ~/.oh-my-zsh
#fi
#ln -s ~/.dotfiles/oh-my-zsh/* ~/.oh-my-zsh/
# ZSH Directory (new)
if [ ! -d ~/.ohmyzsh ] && echo "Directory ~/.ohmyzsh DOES NOT exist. Creating directory... "; then
  mkdir ~/.ohmyzsh
fi
ln -s ~/.dotfiles/ohmyzsh/* ~/.ohmyzsh/

# Vim
echo "Vim";
if [ ! -d ~/.config/.vim ] && echo "Directory ~/.vim DOES NOT exist. Creating directory..."; then
  mkdir ~/.vim
fi

if [ -f ~/.vimrc ] && echo "File ~/.vimrc exists. Creating backup..."; then
  mv ~/.vimrc ~/.vimrc.bak
fi
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
if [ ! -d ~/.vim/bundle ] && echo "Directory ~/.vim/bundle DOES NOT exist. Creating directory... "; then
  mkdir ~/.vim/bundle
fi
ln -s ~/.dotfiles/vim/bundle ~/.vim/bundle

# Neovim
echo "NeoVim";
if [ ! -d ~/.config/nvim ] && echo "Directory ~/.config/nvim DOES NOT exist. Creating directory... "; then
  mkdir ~/.config/nvim
fi
ln -s ~/.dotfiles/config/nvim ~/.config/nvim/

# Add for .Net Core
# ln -s ~/.dotfiles/vscode/launcher.json ~/.vscode/launcher.json
# ln -s ~/.dotfiles/vscode/tasks.json ~/.vscode/tasks.json

# want to source it, but getting error
# source ~/.bash_profile

####################################################
# Other Mac setup
####################################################

# disable Apple Photos from auto-launching when plugging in sdcard.
# See: http://petapixel.com/2015/12/21/stop-apple-photos-from-auto-launching-in-os-x-with-one-command/
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool YES
