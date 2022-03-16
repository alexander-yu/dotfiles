(
    set -eo pipefail

    case "$(uname)" in
        Darwin)
            brew bundle
        ;;
        Linux)
            nix-env -if "$(git rev-parse --show-toplevel)/misc/pkgs.nix"
        ;;
    esac
)
