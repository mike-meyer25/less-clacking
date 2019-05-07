# Mac OS install script largely stolen from @rowofpixels.

### Tap brew casks as needed ###
brew tap thoughtbot/formulae
brew tap sambadevi/powerlevel9k
brew tap caskroom/fonts
### Update brew ###
brew update

### Install brew packages ###
brew install autojump
brew install cmake
brew install erlang
brew install elixir
brew install gcc
brew install git
brew install nvm
brew install pyenv
brew install pyenv-virtualenv
brew install rcm
brew install terraform
brew install tig
brew install vim
brew install wget
brew install zsh zsh-completions
brew install powerlevel9k
brew install imagemagick
### Install applications with brew cask ###

brew cask install dropbox
brew cask install docker
brew cask install sublime-text
brew cask install spotify
brew cask install firefox
brew cask install slack
brew cask install vlc
brew cask install postman
brew cask install postico
brew cask install base
brew cask install discord
brew cask install visual-studio-code
brew cask install font-hack-nerd-font
brew cask install iterm2
brew cask install font-hack-nerd-font
### macOS specific settings ###

# Finder: show all filename extensions
# http://www.defaults-write.com/display-the-file-extensions-in-finder/
# Revert to the default
# defaults write NSGlobalDomain AppleShowAllExtensions -bool false
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Disable the extension change warning in OS X Finder
# http://www.defaults-write.com/disable-the-extension-change-warning-in-os-x-finder/
# Revert to the default
# defaults write com.apple.finder FXEnableExtensionChangeWarning -bool true
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Use column view in all Finder windows by default
# http://www.defaults-write.com/change-default-view-style-in-os-x-finder/
# Revert to the default
# defaults write com.apple.Finder FXPreferredViewStyle icnv
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# Disable the warning before emptying the Trash
# http://www.defaults-write.com/disable-the-warning-before-emptying-the-trash/
# Revert to the default
# defaults write com.apple.finder WarnOnEmptyTrash -bool true
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Remove the Dock Auto-Hide & Show Delay
# http://www.defaults-write.com/remove-the-dock-auto-hide-show-delay/
# Revert to the default
# defaults delete com.apple.Dock autohide-delay
defaults write com.apple.dock autohide-delay -float 0

# Reduce the animation when hiding/showing the Dock to 0.5s
defaults write com.apple.dock autohide-time-modifier -float 0.5

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

for app in "Dock" "Finder"; do
  killall "${app}" > /dev/null 2>&1
done

### Terminal setup ###

# setup theme
if [ ! -d "$HOME/.oh-my-zsh/custom/themes/powerlevel9k"] ; then
    git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
fi

### vim setup ###

# If bundle directory for pathogen doesn't exist, create it
if [ ! -d "$HOME/.vim/bundle" ] ; then
    mkdir -p $HOME/.vim/bundle
fi
# If the pathogen directory doesn't exist, create it
if [ ! -d "$HOME/.vim/autoload" ] ; then
        mkdir -p $HOME/.vim/autoload
fi
# Download vim pathogen package manager.
if [ ! -f "$HOME/.vim/autoload/pathogen.vim" ]; then
    curl -Sso ~/.vim/autoload/pathogen.vim \
        https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
fi
# If vim colors directory doesn't exist, create it.
if [ ! -d "$HOME/.vim/colors" ] ; then
        mkdir -p $HOME/.vim/colors
fi
# install apprentice vim color theme
if [ ! -f "$HOME/.vim/colors/apprentice.vim"] ; then
        cp vim/colors/apprentice.vim $HOME/.vim/colors/
fi


### Dotfile
rcup gitconfig
rcup gitignore
rcup zprofile
rcup vimrc
rcup zshrc