(
    set -eo pipefail

    # Symlink micro config
    ln -s "${0:a:h}/settings.json" "$HOME/.config/micro/settings.json"
)
