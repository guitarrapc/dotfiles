## dotfiles

this repo is dotfiles for macos.

## Run

```shell
$ git clone git@github.com:guitarrapc/dotfiles.git
$ cd dotfiles
$ ./setup.sh
  [✔] /Users/guitarrapc/.bashrc → /Users/guitarrapc/github/guitarrapc/dotfiles/.bashrc
  [✔] /Users/guitarrapc/.gitignore_global → /Users/guitarrapc/github/guitarrapc/dotfiles/.gitignore_global
  [✔] /Users/guitarrapc/.ansible.cfg → /Users/guitarrapc/github/guitarrapc/dotfiles/.ansible.cfg
  [✔] /Users/guitarrapc/.gitprompt.sh → /Users/guitarrapc/github/guitarrapc/dotfiles/.gitprompt.sh
  [✔] /Users/guitarrapc/.bash_profile → /Users/guitarrapc/github/guitarrapc/dotfiles/.bash_profile
  [✔] /Users/guitarrapc/.gitconfig → /Users/guitarrapc/github/guitarrapc/dotfiles/.gitconfig
  [✔] /Users/guitarrapc/Library/Application Support/Code/User/settings.json → /Users/guitarrapc/github/guitarrapc/dotfiles/Library/Application Support/Code/User/settings.json
  [✔] /Users/guitarrapc/.ssh/config → /Users/guitarrapc/github/guitarrapc/dotfiles/.ssh/config
```

## Remarks

`setup.sh` is based on [paulirish/dotfiles](https://github.com/paulirish/dotfiles).
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
