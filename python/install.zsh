(
    set -eo pipefail

    # Install any python dependencies
    pip3 install -r requirements.txt

    # Symlink .pythonstartup
    ln -s "$(git rev-parse --show-toplevel)/python/.pythonstartup" "$HOME/.pythonstartup"
)
