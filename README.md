# Steven's Dotfiles

Always a work in progress. Hoping to use this between my Mac and Ubuntu machines. This initially started on my Mac OS X, but is being improved to also work on Ubuntu-- once I consider using an Ubuntu-box for any type of development.

The idea behind how this project is currently structured is to keep everything in the .dotfiles/ folder in the user's home directory. Then to only create a single symbolic link for .bash_profile.

## Requirements

You should have necessary apps installed already. Applications such as Git, Rails, Mongodb, Postgres, Android SDK, mySQL, etc. This repo does not install all that for you. The PATH is set in the .bash_profile file.

## Installation

1. Git clone this project.
2. Rename dotfiles/ to .dotfiles and place it in your home directory.
3. cd into .dotfiles directory.
4. Run chmod u+x install.sh
5. Run ./install.sh

## Other Apps

Some other apps you may want to set up.

* [rbenv](https://github.com/sstephenson/rbenv) - For managing rubies.
* [Postgres.app](http://postgresapp.com/) - Postgres for Mac.
* [Android SDK](https://developer.android.com/sdk/index.html)
* [homebrew](http://brew.sh/) - Mac package manager.
* [git-completion](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash) - Already included in this project.
* [heroku toolbelt](https://toolbelt.heroku.com/)

### Git Aware Prompt

I really like [Git Aware Prompt](https://github.com/jimeh/git-aware-prompt), but I use my own fork which supresses the dirty flag for submodules. See: [sunpech/git-aware-prompt](https://github.com/sunpech/git-aware-prompt).

