# shell
alias ".."="cd .."
alias lh="ls -sh"
alias del="trash-put"
alias clip="xclip -sel clip"

# docker
alias drun="docker run --rm -it --security-opt label=disable"

# kubernetes
alias kk="kubectl"
alias kccc="kubectl config current-context"
alias kcn="kubectl config set-context (kubectl config current-context) --namespace"

# python
alias py="python3"
alias dpy="ipython3 --pdb"
alias ipy="ipython3 -i"
alias jn="jupyter-notebook"
alias jlab="jupter-lab"

# git
alias gout="git checkout"
alias gcom="git commit"
alias gadd="git add"
alias gpush="git push"
alias gpull="git pull"

alias swapenv="conda deactivate; conda activate"
