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

    # Install watchman hook
    curl https://raw.githubusercontent.com/git/git/master/templates/hooks--fsmonitor-watchman.sample -o /usr/local/bin/fsmonitor-watchman
    chmod +x /usr/local/bin/fsmonitor-watchman

    # Install git-recall
    npm install -g git-recall

    # Include git config
    git config --global include.path "${0:a:h}/.gitconfig"

    case "$(uname)" in
        Linux)
            # Install JSON::PP for fsmonitor-watchman
            sudo dnf install perl-JSON-PP
        ;;
    esac
)
