#!/bin/bash

# bash-completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
# git-prompt
[ -f ~/.gitprompt.sh ] && source ~/.gitprompt.sh
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
# git-completion
[ -f /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash ] && . /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash

# terraforming
alias terraforming='docker run --rm --name terraforming -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY -e AWS_REGION=$AWS_DEFAULT_REGION quay.io/dtan4/terraforming:latest terraforming'

# pyenv
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

# pyenv-virtualenv
eval "$(pyenv virtualenv-init -)"

# direnv
export EDITOR=vim
eval "$(direnv hook bash)"

# ruby
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# packer
alias packer='docker run --rm -it -e ARM_CLIENT_ID=$ARM_CLIENT_ID -e ARM_CLIENT_SECRET=$ARM_CLIENT_SECRET -e ARM_SUBSCRIPTION_ID=$ARM_SUBSCRIPTION_ID -e ARM_TENANT_ID=$ARM_TENANT_ID -v $(pwd):/app/ -w /app/packer/builder guitarrapc/packer-ansible-docker:latest'

# nodebrew
export PATH=/usr/local/var/nodebrew/current/bin:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH

# alias
alias ll="ls -lG"
alias where="command -v"
alias git=hub

# golang
export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
