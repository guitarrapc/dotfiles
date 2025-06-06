## dotfiles

this repo is dotfiles for macos.

## Run

You have two options to link your dotfiles:

### (Recommended) scoop install [DotfilesLinker](https://github.com/guitarrapc/DotfilesLinker) or [dotfileslinker-go](https://github.com/guitarrapc/dotfileslinker-go).

DotfilesLinker is C# version, and dotfileslinker-go is Go version. You can choose any of them and works the same.

```shell
# C# DotfilesLinker
$ curl -L -o DotfilesLinker_darwin_arm64.tar.gz https://github.com/guitarrapc/DotfilesLinker/releases/download/0.3.0/DotfilesLinker_darwin_arm64.tar.gz
$ tar -xzf DotfilesLinker_darwin_arm64.tar.gz
$ sudo chmod +x DotfilesLinker
$ sudo mv DotfilesLinker /usr/local/bin/dotfileslinker
$ dotfileslinker --version
$ rm DotfilesLinker_darwin_arm64.tar.gz

# Go dotfileslinker-go
$ curl -L -o dotfileslinker.tar.gz https://github.com/guitarrapc/dotfileslinker-go/releases/download/v0.3.0/dotfileslinker_0.3.0_darwin_arm64.tar.gz
$ tar -xzf dotfileslinker.tar.gz
$ sudo chmod +x dotfileslinker
$ sudo mv dotfileslinker /usr/local/bin/dotfileslinker
$ dotfileslinker --version
$ rm dotfileslinker.tar.gz
```

### Run `./install.ps1` to setup symlink

This script will not be maintained, but you can still use it to setup your dotfiles.

```shell
PS> .\install.ps1
Windows Developer mode is Enabled.
[o] C:\Users\guitarrapc\.gitconfig → C:\git\guitarrapc\dotfiles-win\.gitconfig
[o] C:\Users\guitarrapc\.gitignore_global → C:\git\guitarrapc\dotfiles-win\.gitignore_global
[o] C:\Users\guitarrapc\.profile → C:\git\guitarrapc\dotfiles-win\.profile
[o] C:\Users\guitarrapc\.wslconfig → C:\git\guitarrapc\dotfiles-win\.wslconfig
[o] C:\Users\guitarrapc\.docker\daemon.json → C:\git\guitarrapc\dotfiles-win\home\.docker\daemon.json
[o] C:\Users\guitarrapc\.ssh\config → C:\git\guitarrapc\dotfiles-win\home\.ssh\config
[o] C:\Users\guitarrapc\AppData\Roaming\Code\User\settings.json → C:\git\guitarrapc\dotfiles-win\home\AppData\Roaming\Code\User\settings.json
```

## Remarks

`install.sh` is based on [paulirish/dotfiles](https://github.com/paulirish/dotfiles).
Modified to link keeping directory tree.

gen kubectl bash-completion via

```
echo "if command -v kubectl >/dev/null 2>&1" > ./usr/local/etc/bash_completion.d/kubectl
echo "then" >> ./usr/local/etc/bash_completion.d/kubectl
kubectl completion bash >> ./usr/local/etc/bash_completion.d/kubectl
echo "alias k=kubectl" >> ./usr/local/etc/bash_completion.d/kubectl
echo "complete -o default -F __start_kubectl k" >> ./usr/local/etc/bash_completion.d/kubectl
echo "fi" >> ./usr/local/etc/bash_completion.d/kubectl
```
