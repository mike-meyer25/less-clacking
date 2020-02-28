I'm tired of resetting up my shell as I move around from machine to machine, so I'm going to build a little git repo for my hidden config files.  


# Prerequisites 

## Generate RSA Key
* Open Terminal and generate a key
`ssh-keygen`
* Output
  mikemeyer@Mikes-MacBook-Pro ~ % ssh-keygen
  Generating public/private rsa key pair.
  Enter file in which to save the key (/Users/mikemeyer/.ssh/id_rsa): 
  Created directory '/Users/mikemeyer/.ssh'.
  Enter passphrase (empty for no passphrase): 
  Enter same passphrase again: 
  Your identification has been saved in /Users/mikemeyer/.ssh/id_rsa.
  Your public key has been saved in /Users/mikemeyer/.ssh/id_rsa.pub.
* Get the key `cat ~/.ssh/id_rsa.pub`

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
git clone git@github.com:mikemeyer/less-clacking.git ~/.dotfiles
bash ~/.dotfiles/install.sh
```

# Update Python Mac Env
Install pyenv `brew install pyenv`

Install python - `pyenv install 3.8.0`

Set the global python env - `pyenv global 3.8.0`

