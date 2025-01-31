# Paths
export PATH=/opt/homebrew/bin:$PATH
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/.local/bin

# Python
export PYTHONSTARTUP="$HOME/.pythonstartup"

# Golang
export GOPATH=$GOPATH:$HOME/go

# bug fix: see https://github.com/sorin-ionescu/prezto/issues/966#issuecomment-172003005
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# Miscellaneous
export EDITOR=micro
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --no-ignore-vcs -g "!{node_modules,.git}"'
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --color=16"
export TERM=xterm-256color
