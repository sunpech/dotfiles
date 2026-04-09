# Sunpech's dotfiles

My dotfiles for macOS. This will help you (me) get started setting up a fresh new Mac.

I use [GNU stow](https://www.gnu.org/software/stow/) to manage symlinks for configurations.

## Requirements

You need to run z shell (zsh), which is default since macOS Catalina, in 2019.

You'll need to have [homebrew](https://brew.sh/) installed.

Then you'll need git and stow to install this dotfiles repository.

```
brew install git stow
```

## Installation

### Clone repo (with submodules)

There are currently no submodules.

```
git clone --recurse-submodules git@github.com:sunpech/dotfiles.git

mv dotfiles ~/.dotfiles

cd ~/.dotfiles
```

### Run stow

Use stow to create symlinks for config files.

I disagree with running `stow .` at the top of the project directory to symlink everything. I think it's better to organize by directory where it's more modular, which is the approach of this repo.

```
stow zsh powerlevel10k starship eza nvim vim git wezterm ghostty
```

After running stow above, you should be setup with your dotfiles.

## Applications

### Terminals

Homebrew cask available for these.

- [Ghostty](https://ghostty.org)
- [WezTerm](https://wezfurlong.org/wezterm/)

```
brew install --cask wezterm ghostty
```

### Z shell (zsh) Customizations

Installed via homebrew.

* [powerlevel10k](https://github.com/romkatv/powerlevel10k)
* [Starship](https://github.com/starship/starship)
* zsh-autosuggestions and zsh-syntax-highlighting

```
brew install zsh-autosuggestions zsh-syntax-highlighting powerlevel10k starship
```

### Applicaiton paths used in dotfiles

You'll need to have these installed.

- [eza](https://github.com/eza-community/eza) - A modern, maintained replacement for ls.
- [rbenv](https://github.com/sstephenson/rbenv) - For managing rubies.
- [homebrew](http://brew.sh/) - Mac package manager.
- [zoxide](https://github.com/ajeetdsouza/zoxide) - A smarter cd command.

### Other Homebrew Installs

These are some other important homebrew packages.

#### Neovim related

```
brew install neovim fd rg ast-grep lazygit
```

#### Various packages

```
brew install node nvm openssl rbenv ruby-build wget vim tig rename ssh-copy-id rename toilet tree glances go hugo fastfetch yt-dlp fzf zoxide eza gitmoji cmatrix ffmpeg exiftool
```

#### Fonts

I'm a fan of [JetBrains Mono font](https://www.jetbrains.com/lp/mono/).

```
brew install --cask font-meslo-lg-nerd-font font-jetbrains-mono-nerd-font font-fira-code
```

### Recommended Applications

- [Git Fork](https://git-fork.com/) - A fast and friendly git client.
- [Github Desktop](https://desktop.github.com/download/) - Github Git GUI.
- [Google Antigravity](https://antigravity.google) - Google's AI IDE.
- [Microsoft Visual Studio Code](https://code.visualstudio.com/) - Microsoft's AI IDE.
- [pgAdmin](https://www.pgadmin.org/) - Popular PostgreSQL admin tool.
- [Postgres.app](http://postgresapp.com/) - Postgres for Mac.
- [Sourcetree](https://www.sourcetreeapp.com/) - Git GUI from Atlassian.
- [Sublime Text](https://www.sublimetext.com/) and [Sublime Merge](https://www.sublimemerge.com) - Text Editor and Git GUI.

I also have a more up to date repo, [Best Software List](https://github.com/sunpech/best_software_list).

## Misc

You may want to:

1. [Change your computer’s name or local hostname on Mac](https://support.apple.com/guide/mac-help/change-computers-local-hostname-mac-mchlp2322/mac#:~:text=On%20your%20Mac%2C%20choose%20Apple,Click%20About.&text=Select%20the%20current%20computer%20name%2C%20then%20type%20a%20new%20name.)

2. [Disable Apple Photos from auto-launching when plugging in sdcard ](http://petapixel.com/2015/12/21/stop-apple-photos-from-auto-launching-in-os-x-with-one-command/). Run command below.

```
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool YES
```

3. Prevent macOS from Creating .DS_Store on Network and USB/external Drives

```
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool TRUE
```