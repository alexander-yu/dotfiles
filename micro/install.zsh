(
    set -eo pipefail

    # Symlink micro colorschemes
    ln -s "$(readlink -f $(dirname $0))/colorschemes/*.micro" "$HOME/.config/micro/"

    # Symlink micro config
    ln -s "$(readlink -f $(dirname $0))/settings.json" "$HOME/.config/micro/settings.json"
)
