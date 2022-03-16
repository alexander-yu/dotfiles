(
    set -eo pipefail

    case "$(uname)" in
        Darwin)
            # Install Homebrew
            /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

            # Install any brew dependencies
            brew bundle
        ;;
        Linux)
            # Install nix
            sh <(curl -L https://nixos.org/nix/install) --daemon
            nix-env -if "$(git rev-parse --show-toplevel)/install.zsh"
        ;;
    esac
)
