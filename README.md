# Sunpech's dotfiles

My dotfiles for MacOS. Ubuntu Linux not currently supported.

I use [GNU stow](https://www.gnu.org/software/stow/) to manage symlinks for configurations.

## Requirements

You should be running ZSH as your default shell.

See Apps section below to install homebrew and other apps.

## Installation

### Clone repo

```
git clone git@github.com:sunpech/dotfiles.git

mv dotfiles ~/.dotfiles

cd ~/.dotfiles
```

### Run stow

Use stow to create symlinks for config files. I disagree with running ```stow .``` at the top of the project directory to symlink everything. I think it's better to organize by directory where it's more modular.

```
stow zsh ohmyzsh alacritty powerlevel10k nvim vim git
```

## Terminals

* [Alacritty](https://alacritty.org/) with [Alacritty themes](https://github.com/alacritty/alacritty-theme)
* [iTerm2](http://www.iterm2.com/) with [iTerm2 color schemes](http://iterm2colorschemes.com/)
* [Warp](https://www.warp.dev/)

## ZSH

MacOS's default shell is now Z Shell (zsh).

* [ohmyz.sh](https://ohmyz.sh/)
* [ohmyzsh Github](https://github.com/ohmyzsh/ohmyzsh)
* [powerlevel10k theme](https://github.com/romkatv/powerlevel10k)

I no longer use bash shell. I also no longer use [Fish Shell](https://fishshell.com/) and [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish).

## Submodules
There are 2 submodules in this project:

1. [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
2. [alacritty-theme](https://github.com/alacritty/alacritty-theme)

Be sure to read [this](https://stackoverflow.com/questions/11420701/git-submodule-is-returning-blank/40426513). In short, run:

```
git submodule update
```

## Apps

### Apps paths used in dotfiles

* [eza](https://github.com/eza-community/eza) - A modern, maintained replacement for ls.
* [rbenv](https://github.com/sstephenson/rbenv) - For managing rubies.
* [Postgres.app](http://postgresapp.com/) - Postgres for Mac.
* [homebrew](http://brew.sh/) - Mac package manager.
* [zoxide](https://github.com/ajeetdsouza/zoxide) - A smarter cd command.

Save Android and Google Cloud SDKS to folder ```Development```.

### Homebrew Installs

Packages to install with [Homebrew](http://brew.sh/).

```
brew install git node openssl rbenv ruby-build wget vim tig rename ssh-copy-id rename toilet tree glances go hugo fastfetch yt-dlp
```

```
brew install zsh-autosuggestions zsh-syntax-highlighting powerlevel10k font-meslo-lg-nerd-font
```

```
brew install neovim fd rg ast-grep lazygit
```

### Recommended Apps

* [Sublime Text + Merge](https://www.sublimetext.com/) - Text editor. Also see [my sublime-text-settings repo](https://github.com/sunpech/sublime-text-settings).
* [Visual Studio Code](https://code.visualstudio.com/) - A Code editor.
* [Sourcetree](https://www.sourcetreeapp.com/)

I also have a more up to date repo, [Best Software List](https://github.com/sunpech/best_software_list).

### Misc

Disable Apple Photos from auto-launching when plugging in sdcard. See: http://petapixel.com/2015/12/21/stop-apple-photos-from-auto-launching-in-os-x-with-one-command/

```
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool YES
```

Other set up links:

* [Setup bash with homebrew](https://johndjameson.com/blog/updating-your-shell-with-homebrew/)
* [Setup Oh My Fish](https://github.com/oh-my-fish/oh-my-fish)
* [Setup Alacritty](https://www.josean.com/posts/how-to-setup-alacritty-terminal)
