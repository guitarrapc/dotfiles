
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
export ANDROID_NDK_PATH=${ANDROID_SDK_PATH}/ndk/22.1.7171670
export ANDROID_SDK_CMAKE=${ANDROID_SDK_PATH}/cmake/3.10.2.4988404/bin/cmake
