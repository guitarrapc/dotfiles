# alias
alias ls='ls -AFG'
alias ll='ls -hlt'

# completion
autoload -Uz compinit && compinit

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# kubectl
if [[ -f "/opt/homebrew/bin/kubectl" ]]; then
  source <(kubectl completion zsh)
  alias k=kubectl
  compdef __start_kubectl k
fi

# stop correct for LLM
unsetopt correct_all
unsetopt correct
export ENABLE_CORRECTION="false"
