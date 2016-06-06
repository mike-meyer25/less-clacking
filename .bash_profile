# Load in the git branch prompt script.
source ~/.git-prompt.sh

#Process bash rc if it exists.
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
#If bundle directory for pathogen doesn't exist, create it
if [ ! -d "$HOME/.vim/bundle" ] ; then
    mkdir -p $HOME/.vim/bundle
fi
#If the pathogen directory doesn't exist, create it
if [ ! -d "$HOME/.vim/autoload" ] ; then
        mkdir -p $HOME/.vim/autoload 
fi
#Download vim pathogen package manager.
if [ ! -f "$HOME/.vim/autoload/pathogen.vim" ]; then
        curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
fi

#Aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
#Human readable du/df
alias du='du -kh'
alias df='df -kTh'
#For seeing used space.
alias diskspace="du -S | sort -n -r |more"
#Get Libpath
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
#Full LS print
alias lss='ls -larth'
# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'
#Display path
alias path='echo -e ${PATH//:/\\n}'




#From the tldp.org
function extract()      # Handy Extract Program
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1     ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1      ;;
            *.rar)       unrar x $1      ;;
            *.gz)        gunzip $1       ;;
            *.tar)       tar xvf $1      ;;
            *.tbz2)      tar xvjf $1     ;;
            *.tgz)       tar xvzf $1     ;;
            *.zip)       unzip $1        ;;
            *.Z)         uncompress $1   ;;
            *.7z)        7z x $1         ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

#exports
export ANDROID_PATH=/Users/justin/Library/Android/sdk
export CLICOLOR=1
#Fallback libraries for compiling caffe with cuda
export DYLD_FALLBACK_LIBRARY_PATH=/usr/local/cuda/lib:$HOME/anaconda/lib:/usr/local/lib:/usr/lib
export GREP_OPTIONS='--color=auto'
export PATH=/usr/local/sbin:$PATH
export PATH=$PATH:$ANDROID_PATH/tools:$ANDROID_PATH/platform-tools



[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
