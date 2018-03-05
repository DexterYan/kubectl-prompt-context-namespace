Kubernetes prompt
============================================

A simple script that display the current kubectl context and namespace in the shell prompt, you also can turn on or off it by command.

## Installing

1. Clone this repository
2. Source the kube-prompt.sh in your `~/.bash_profile`

For Bash:

```
NORMAL="\[\033[00m\]"
BLUE="\[\033[01;34m\]"
PURPLE="\[\e[0;35m\]"
GREEN="\[\e[1;32m\]"

source ~/kube-prompt.sh
export PS1="${BLUE}\W ${GREEN}\u${PURPLE}\$(__kube_ps1)${NORMAL} \$ "
```

## Enabling/Disabling
kubeon     : turn on kube-ps1 status for this shell.
kubeoff    : turn off kube-ps1 status for this shell.

## Reference
[jonmosco/kube-ps](https://github.com/jonmosco/kube-ps1)
[Display the current kubectl context in the Bash prompt](https://pracucci.com/display-the-current-kubelet-context-in-the-bash-prompt.html)