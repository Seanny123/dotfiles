alias ".."="cd .."
alias lh='ls -sh'
alias pynum='ipython -c "import numpy as np"'
alias numpy='ipython -c "import numpy as np"'
alias del='trash-put'

gcv()
{
	g++ $1 -o $1.o `pkg-config --cflags --libs opencv`
}

ipdb()
{
  ipython --pdb -c "%run $1"
}
