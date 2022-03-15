(
    set -eo pipefail

    # Symlink micro config
    ln -s "$(git rev-parse --show-toplevel)/micro/settings.json" "$HOME/.config/micro/settings.json"
)
