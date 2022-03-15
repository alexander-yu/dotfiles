(
    set -eo pipefail

    case "$(uname)" in
        Darwin)
            brew bundle
        ;;
        Linux)
            nix-env -if "${0:a:h}/install.zsh"
        ;;
    esac
)
