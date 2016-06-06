alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

#For seeing used space.
alias diskspace="du -S | sort -n -r |more"

#For Lab machines at school...
export PATH=$PATH:$HOME/Programs/SublimeText2
#Alias sublime_text to subl
alias subl="sublime_text"

export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
#Allows for more queries of github when doing large system updates
export HOMEBREW_GITHUB_API_TOKEN=90fcf0fd958028d15bcac930969c0589bf2eb1e6
#Fallback libraries for compiling caffe with cuda
export DYLD_FALLBACK_LIBRARY_PATH=/usr/local/cuda/lib:$HOME/anaconda/lib:/usr/local/lib:/usr/lib



RESET="\[\017\]"
NORMAL="\[\033[0m\]"
RED="\[\033[31;1m\]"
YELLOW="\[\033[33;1m\]"
WHITE="\[\033[37;1m\]"
GREEN="\[\033[32;1m\]"
BLUE="\[\033[34m\]"

PS1="[${RESET}${GREEN}\u${NORMAL}@${BLUE}\h ${NORMAL}${YELLOW}\w${CYAN}\$(__git_ps1)${NORMAL}]\$ "

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
