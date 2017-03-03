alias ".."="cd .."
alias lh='ls -sh'
alias 'spy'='sudo python3'
alias 'py'='ipython3'
alias 'python'='python3'
alias del='trash-put'
alias jn="jupyter-notebook"
alias gputop="watch -n 0.5 nvidia-smi"

gcv()
{
	g++ $1 -o $1.o `pkg-config --cflags --libs opencv`
}

# helper functions
spip()
{
    sudo -H pip3 $*
}

dpy()
{
    ipython3 --pdb $*
}
