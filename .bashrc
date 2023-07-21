# shell
alias '..'='cd ..'
alias lh='ls -sh'
alias del='trash-put'
alias clip='xclip -sel clip'

# docker
alias docker-it="docker run --rm -it --security-opt label=disable"

# kubernetes
alias kk="kubectl"
alias kccc="kubectl config current-context"
alias kcn="kubectl config set-context (kubectl config current-context) --namespace"

# python
alias py='python3'
alias jn='jupyter-notebook'
alias jlab='jupter-lab'

# general
alias gputop="watch -n 0.5 nvidia-smi"
alias foxit="wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Foxit\ Software/Foxit\ Reader/FoxitReader.exe"

dpy()
{
    ipython3 --pdb $*
}

ipy()
{
    ipython3 -i $*
}
