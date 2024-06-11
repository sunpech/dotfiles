# Sunpech's Dotfiles

My dotfiles to be installed on any new Mac/Ubuntu machine I set up-- although mostly geared for Mac. Always a work in progress.

The idea behind how this project is currently structured is to keep everything in the .dotfiles/ folder in the user's home directory. Then to only create a single symbolic link for .bash_profile.

## Requirements

You should have necessary apps installed already. Applications such as Git, Rails, Mongodb, Postgres, Android SDK, mySQL, etc. This repo does not install all that for you. The PATH is set in the .bash_profile file.

## Installation

Run the following, line by line.

```
git clone git@github.com:sunpech/dotfiles.git

mv dotfiles ~/.dotfiles

cd ~/.dotfiles

chmod u+x install.sh

./install.sh
```

From here make custom changes depending on what kind of dev-box you need.

## Shells

* [Alacritty](https://alacritty.org/) - Modern cross platform terminal emulator (Linux, macOS, Windows).
* [Alacritty themes](https://github.com/alacritty/alacritty-theme)
* [iTerm2](http://www.iterm2.com/) - Terminal emulator.  
* [iTerm2 color schemes](http://iterm2colorschemes.com/)

### Fish
* [Fish Shell](https://fishshell.com/) - A smart and user-friendly command line
* [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish)

### ZSH
* Z Shell (MacOS Catalina default)
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* [powerlevel10k theme](https://github.com/romkatv/powerlevel10k)

Be sure to read [this](https://stackoverflow.com/questions/11420701/git-submodule-is-returning-blank/40426513). In short, run:

```git submodule update```

## Apps

### Apps paths used in dotfiles

* [eza](https://github.com/eza-community/eza) - A modern, maintained replacement for ls.
* [rbenv](https://github.com/sstephenson/rbenv) - For managing rubies.
* [Postgres.app](http://postgresapp.com/) - Postgres for Mac.
* [Android SDK](https://developer.android.com/sdk/index.html)
* [homebrew](http://brew.sh/) - Mac package manager.
* [git-completion](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash) - Already included in this project.
* [zoxide](https://github.com/ajeetdsouza/zoxide) - A smarter cd command.

Save Android and Google Cloud SDKS to folder ```Development```.

### Brew Installs

Packages to install with [Homebrew](http://brew.sh/).

```
brew install git bash node openssl rbenv ruby-build wget vim tig rename archey ssh-copy-id rename toilet figlet tree imagemagick@6 glances fish go hugo jekyll
```

```
brew install zsh-autosuggestions zsh-syntax-highlighting powerlevel10k font-meslo-lg-nerd-font
```

### Recommended Apps

* [Sublime Text](https://www.sublimetext.com/) - Text editor. Also see [my sublime-text-settings repo](https://github.com/sunpech/sublime-text-settings).
* [Visual Studio Code](https://code.visualstudio.com/) - A Code editor.

I also have a more up to date repo, [Best Software List](https://github.com/sunpech/best_software_list).

### More Stuff

* [Setup bash with homebrew](https://johndjameson.com/blog/updating-your-shell-with-homebrew/)
* [Setup Oh My Fish](https://github.com/oh-my-fish/oh-my-fish)
* [Setup Alacritty](https://www.josean.com/posts/how-to-setup-alacritty-terminal)