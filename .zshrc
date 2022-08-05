
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

# android
export ANDROID_SDK_PATH="$HOME/Library/Android/sdk"
if [[ -d $ANDROID_SDK_PATH ]]; then
    export ANDROID_NDK_PATH=${ANDROID_SDK_PATH}/ndk/$(ls -A1 $ANDROID_SDK_PATH/ndk)
    export ANDROID_SDK_CMAKE=${ANDROID_SDK_PATH}/cmake/$(ls -A1 $ANDROID_SDK_PATH/cmake)bin/cmake
fi

# kubectl
if [[ -f "/opt/homebrew/bin/kubectl" ]]; then
  source <(kubectl completion zsh)
  alias k=kubectl
  compdef __start_kubectl k
fi
