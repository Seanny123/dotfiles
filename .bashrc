alias ".."="cd .."
alias lh='ls -sh'
alias 'py'='ipython'
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
    sudo -H pip $*
}
