#run ansible from source
source ~/git/ansible/hacking/env-setup &>/dev/null

#setting vmware as default
export VAGRANT_DEFAULT_PROVIDER=vmware_fusion

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
