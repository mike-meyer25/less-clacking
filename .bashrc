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

RESET="\[\017\]"
NORMAL="\[\033[0m\]"
RED="\[\033[31;1m\]"
YELLOW="\[\033[33;1m\]"
WHITE="\[\033[37;1m\]"
GREEN="\[\033[32;1m\]"
BLUE="\[\033[34m\]"

PS1="[${RESET}${GREEN}\u${NORMAL}@${BLUE}\h ${NORMAL}${YELLOW} \w${NORMAL}]\$ "
