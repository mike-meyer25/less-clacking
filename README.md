I'm tired of resetting up my shell as I move around from machine to machine, so I'm going to build a little git repo for my hidden config files.  


# Prerequisites 

## Package Management
On Mac OS, currently using [Homebrew](https://brew.sh/)

## Dotfile Management

Currently using [RCM](https://github.com/thoughtbot/rcm) to manage dotfiles.

Homebrew install:
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap thoughtbot/formulae
brew install rcm
```

# Installation

```
git clone git@github.com:JusLarsen/less-clacking.git ~/.dotfiles
bash ~/.dotfiles/install.sh
```

# Update Python Mac Env
Install pyenv `brew install pyenv`

Install python - `pyenv install 3.8.0`

Set the global python env - `pyenv global 3.8.0`

