(
    set -eo pipefail

    # Symlink .vimrc
    ln -s "$(git rev-parse --show-toplevel)/vim/.vimrc" "$HOME/.vimrc"
)
