#Process bash rc if it exists.
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

#Add Sublime Text to path

#export PATH=$PATH:~/SublimeText2/

#Alias sublime_text to subl

alias ls='ls -lart'
alias subl='.~/SublimeText2/sublime_text'
