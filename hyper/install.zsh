(
    set -eo pipefail

    # Symlink hyper config
    ln -s "$(git rev-parse --show-toplevel)/hyper/.hyper.js" "$HOME/.hyper.js"
)
