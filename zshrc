POWERLEVEL9K_MODE='Hack Nerd Font'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=35
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_absolute"
ZSH_THEME="powerlevel9k/powerlevel9k"

# load plugins
plugins=(
  git
  autojump
)

# load zsh
export ZSH="/Users/mmeyer/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# # nvm versions directory setup
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# mkdir -p $NVM_DIR
# # Execute nvm shell script.
# . "/usr/local/opt/nvm/nvm.sh"

# Custom complication flags for brew installs of zlib and sqlite
export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export PATH="/usr/local/opt/sqlite/bin:$PATH"

# Allow pyenv to switch virtualenvs based on folder
export PYENV_ROOT="$HOME/.pyenv" 
export PATH="$PYENV_ROOT/bin:$PATH" 
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/mmeyer/dev/spectrum/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/mmeyer/dev/spectrum/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/mmeyer/dev/spectrum/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/mmeyer/dev/spectrum/node_modules/tabtab/.completions/sls.zsh

# Aliases
unalias grv
export PATH="/usr/local/opt/sqlite/bin:$PATH"

#alias dockerenv=export $(grep -v '^#' .env | xargs)

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/mmeyer/dev/spectrum/services-api/refractor/core/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/mmeyer/dev/spectrum/services-api/refractor/core/node_modules/tabtab/.completions/slss.zsh
. $(brew --prefix asdf)/asdf.sh
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export CI_JOB_TOKEN=E7ridxTxk5tbDGxgV69B