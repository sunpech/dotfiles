# Sunpech's dotfiles

My dotfiles for MacOS. This will help you/me get started setting up a fresh new MacOS setup. *(Ubuntu Linux not currently supported).*

I use [GNU stow](https://www.gnu.org/software/stow/) to manage symlinks for configurations.

## Requirements

You need to run z shell (zsh), which is default on MacOS since macOS Catalina, in 2019.

You'll need to have [homebrew](https://brew.sh/) installed. 

Then you'll need git and stow to install this dotfiles repository.

```
brew install git stow
```

## Installation

### Clone repo (with submodules)

```
git clone --recurse-submodules git@github.com:sunpech/dotfiles.git

mv dotfiles ~/.dotfiles

cd ~/.dotfiles
```

### Run stow

Use stow to create symlinks for config files. 

I disagree with running ```stow .``` at the top of the project directory to symlink everything. I think it's better to organize by directory where it's more modular, which is what the approach of this repo.

```
stow zsh ohmyzsh alacritty powerlevel10k nvim vim git
```

After running stow above, you should be setup with your dotfiles. You may want to install extras, or even update some submodules-- see sections below.

## Terminals

* [Alacritty](https://alacritty.org/) with [Alacritty themes](https://github.com/alacritty/alacritty-theme)
* [iTerm2](http://www.iterm2.com/) with [iTerm2 color schemes](http://iterm2colorschemes.com/)
* [Warp](https://www.warp.dev/)

## Z shell (zsh)

I use [ohmyz.sh](https://ohmyz.sh/) (Also see: [ohmyzsh Github](https://github.com/ohmyzsh/ohmyzsh)) and [powerlevel10k theme](https://github.com/romkatv/powerlevel10k).

I no longer use bash, or [Fish Shell](https://fishshell.com/) with [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish).

## Submodules
There are 2 submodules in this project:

1. [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
2. [alacritty-theme](https://github.com/alacritty/alacritty-theme)

Be sure to read [this](https://stackoverflow.com/questions/11420701/git-submodule-is-returning-blank/40426513). In short, run:

```
git submodule update
```

Other commands:

f you already cloned the repository without submodules, you can manually initialize and update them:
```
git submodule update --init --recursive
```

After pulling changes to the main repository, you may also need to pull updates for submodules if they have changed. You can use the following command:
```
git submodule update --remote --merge
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

These are some other important homebrew packages.

#### Neovim related
```
brew install neovim fd rg ast-grep lazygit
```

#### Plugin and theme related
```
brew install zsh-autosuggestions zsh-syntax-highlighting powerlevel10k font-meslo-lg-nerd-font
```

#### Various packages
```
brew install node openssl rbenv ruby-build wget vim tig rename ssh-copy-id rename toilet tree glances go hugo fastfetch yt-dlp
```

### Recommended Apps

* [Sublime Text + Merge](https://www.sublimetext.com/). Also see [my sublime-text-settings repo](https://github.com/sunpech/sublime-text-settings)
* [Visual Studio Code](https://code.visualstudio.com/)
* [Sourcetree](https://www.sourcetreeapp.com/)

I also have a more up to date repo, [Best Software List](https://github.com/sunpech/best_software_list).

### Misc

You may want to: 

1. [Change your computer’s name or local hostname on Mac](https://support.apple.com/guide/mac-help/change-computers-local-hostname-mac-mchlp2322/mac#:~:text=On%20your%20Mac%2C%20choose%20Apple,Click%20About.&text=Select%20the%20current%20computer%20name%2C%20then%20type%20a%20new%20name.)
2. [Disable Apple Photos from auto-launching when plugging in sdcard ](http://petapixel.com/2015/12/21/stop-apple-photos-from-auto-launching-in-os-x-with-one-command/). Run command below.

```
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool YES
```

Other set up links:

* [Setup bash with homebrew](https://johndjameson.com/blog/updating-your-shell-with-homebrew/)
* [Setup Oh My Fish](https://github.com/oh-my-fish/oh-my-fish)
* [Setup Alacritty](https://www.josean.com/posts/how-to-setup-alacritty-terminal)
