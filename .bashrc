# shell
alias '..'='cd ..'
alias lh='ls -sh'
alias del='trash-put'
alias clip='xclip -sel clip'

# python
alias 'spy'='sudo python3'
alias 'py'='ipython3'
alias 'ipython'='ipython3'
alias 'python'='python3'
alias julia='/opt/julia-1.0.2/bin/julia'
alias spipup='spip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 sudo -H pip install --upgrade'
alias jn='jupyter-notebook'
alias jlab='jupter-lab'

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
    sudo -H python3 -m pip $* 
}

dpy()
{
    ipython3 --pdb $*
}

ipy()
{
    ipython3 -i $*
}
