
# alias
alias ls='ls -AFG'
alias ll='ls -hlt'

# command fix
setopt correct

# completion
autoload -Uz compinit && compinit

# java
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openjdk@11/include"
if [[ -f "/opt/homebrew/opt/openjdk/libexec/openjdk.jdk" ]]; then
  if [[ ! -L /Library/Java/JavaVirtualMachines/openjdk.jdk ]] || [[ ! -e /Library/Java/JavaVirtualMachines/openjdk.jdk ]] ; then
    sudo ln -sfn $(brew --prefix)/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
  fi
fi
