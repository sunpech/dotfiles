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

## Apps

### Apps paths used in dotfiles

* [rbenv](https://github.com/sstephenson/rbenv) - For managing rubies.
* [Postgres.app](http://postgresapp.com/) - Postgres for Mac.
* [Android SDK](https://developer.android.com/sdk/index.html)
* [homebrew](http://brew.sh/) - Mac package manager.
* [git-completion](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash) - Already included in this project.
* [heroku toolbelt](https://toolbelt.heroku.com/)
* [Interfacelift Downloader](https://github.com/stevenbenner/interfacelift-downloader) - Also see [my fork](https://github.com/sunpech/interfacelift-downloader) for improvements

### Brew Installs

Packages to install with [Homebrew](http://brew.sh/).

```
brew install git node openssl rbenv ruby-build wget vim macvim tig
```

### Recommended Apps

* [Atom.io](https://atom.io/) - Text editor.
* [Sublime Text](https://www.sublimetext.com/) - Text editor. Also see [my sublime-text-settings repo](https://github.com/sunpech/sublime-text-settings).
* [iTerm2](http://www.iterm2.com/) - Terminal. Also see [iTerm2 color schemes](http://iterm2colorschemes.com/).

I have a full list of apps I recommend for software development here: [Best Software Development Tools](http://sunpech.com/best/software-development-tools/)

I also have a more up to date repo, [Best Software List](https://github.com/sunpech/best_software_list).

### Git Aware Prompt

I really like [Git Aware Prompt](https://github.com/jimeh/git-aware-prompt), but I use my own fork which supresses the dirty flag for submodules. See: [sunpech/git-aware-prompt](https://github.com/sunpech/git-aware-prompt).

### Setup Git

I like to use [DiffMerge](https://sourcegear.com/diffmerge/) for merging files.

```
git config --global diff.tool diffmerge
git config --global difftool.diffmerge.cmd 'diffmerge "$LOCAL" "$REMOTE"'
git config --global merge.tool diffmerge
git config --global mergetool.diffmerge.cmd 'diffmerge --merge --result="$MERGED" "$LOCAL" "$(if test -f "$BASE"; then echo "$BASE"; else echo "$LOCAL"; fi)" "$REMOTE"'
git config --global mergetool.diffmerge.trustExitCode true
```
