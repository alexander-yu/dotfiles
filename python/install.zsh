(
    set -eo pipefail

    # Install any python dependencies
    pip install -r requirements.txt

    # Symlink .pythonstartup
    ln -s "$(readlink -f $(dirname $0))/.pythonstartup" "$HOME/.pythonstartup"
)
