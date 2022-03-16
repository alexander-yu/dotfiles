(
    set -eo pipefail

    local dir="$(git rev-parse --show-toplevel)/git"

    case "$(uname)" in
        Darwin)
            brew bundle

            # Install watchman hook
            curl https://raw.githubusercontent.com/git/git/master/templates/hooks--fsmonitor-watchman.sample -o /usr/local/bin/fsmonitor-watchman
            chmod +x /usr/local/bin/fsmonitor-watchman
        ;;
        Linux)
            nix-env -if "$dir/pkgs.nix"

            # Install watchman hook
            mkdir -p "$dir/bin"
            curl https://raw.githubusercontent.com/git/git/master/templates/hooks--fsmonitor-watchman.sample -o "$dir/bin/fsmonitor-watchman"
            chmod +x "$dir/bin/fsmonitor-watchman"

            # Replace shebang with "#!/usr/bin/env perl" so we can use nix's perl installation
            sed -i '1s/#!.*/#!\/usr\/bin\/env perl/' "$dir/bin/fsmonitor-watchman"
        ;;
    esac

    # Install git-recall
    npm install -g git-recall

    # Include git config
    git config --global include.path "$dir/.gitconfig"
)
