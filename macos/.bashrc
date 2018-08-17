#!/bin/bash

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
