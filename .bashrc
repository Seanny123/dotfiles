alias ".."="cd .."
alias lh='ls -sh'
alias del='trash-put'

gcv()
{
	g++ $1 -o $1.o `pkg-config --cflags --libs opencv`
}

# helper functions
spip()
{
    sudo -H pip $*
}
