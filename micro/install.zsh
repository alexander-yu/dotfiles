(
    set -eo pipefail

    # Symlink micro config
    ln -s "$(readlink -f $(dirname $0))/settings.json" "$HOME/.config/micro/settings.json"
)
