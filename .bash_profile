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




#Full LS print
alias ls='ls -larth'
# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'
#Human readable du/df
alias du='du -kh'
alias df='df -kTh'

#Path and Lib alias
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
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

export PATH=/usr/local/sbin:$PATH
