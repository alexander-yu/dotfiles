(
    set -eo pipefail

    # Install home manager
    nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
    nix-channel --update
    nix-shell '<home-manager>' -A install

    # Symlink home manager config
    ln -s "$(git rev-parse --show-toplevel)/nix/home.nix" "$HOME/.config/nixpkgs/home.nix"

    # Activate
    home-manager switch
)
