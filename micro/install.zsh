(
    set -eo pipefail

    # Symlink micro config
    ln -s "$(git rev-parse --show-toplevel)/micro/settings.json" "$HOME/.config/micro/settings.json"

    ln -s "$(git rev-parse --show-toplevel)/micro/bindings.json" "$HOME/.config/micro/bindings.json"
)
