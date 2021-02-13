# Symlink .vimrc
ln -s "$(readlink -f $(dirname $0))/.vimrc" "$HOME/.vimrc"