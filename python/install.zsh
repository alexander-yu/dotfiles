(
    set -eo pipefail

    # Install any python dependencies
    pip install -r requirements.txt

    # Symlink .pythonstartup
    ln -s "$(git rev-parse --show-toplevel)/python/.pythonstartup" "$HOME/.pythonstartup"
)
