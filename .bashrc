# shell
alias ".."="cd .."
alias lh='ls -sh'
alias del='trash-put'

# python
alias 'spy'='sudo python3'
alias 'py'='ipython3'
alias 'python'='python3'
alias spipup="spip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 sudo -H pip install --upgrade"
alias jn="jupyter-notebook"

# general
alias gputop="watch -n 0.5 nvidia-smi"
alias foxit="wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Foxit\ Software/Foxit\ Reader/FoxitReader.exe"

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

ipy()
{
    ipython3 -i $*
}
