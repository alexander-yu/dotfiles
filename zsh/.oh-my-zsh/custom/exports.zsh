# Paths
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Python virtual environment
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export PYTHONSTARTUP=$HOME/.pythonstartup
export WORKON_HOME=$HOME/.virtualenvs

# bug fix: see https://github.com/sorin-ionescu/prezto/issues/966#issuecomment-172003005
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# Miscellaneous
export EDITOR=micro
