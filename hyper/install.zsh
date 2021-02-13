# Symlink hyper config
ln -s "$(readlink -f $(dirname $0))/.hyper.js" "$HOME/.hyper.js"
