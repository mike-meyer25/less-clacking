I'm tired of resetting up my shell as I move around from machine to machine, so I'm going to build a little git repo for my hidden config files.  


# Prerequisites 

## Package Management
On Mac OS, currently using [Homebrew](https://brew.sh/)

## Dotfile Management

Currently using [RCM](https://github.com/thoughtbot/rcm) to manage dotfiles.

Homebrew install:
```
brew tap thoughtbot/formulae
brew install rcm
```

# Installation

```
git clone git@github.com:JusLarsen/less-clacking.git ~/.dotfiles
sh ~/.dotfiles/install.sh

