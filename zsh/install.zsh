(
    set -eo pipefail

    local dir="$(git rev-parse --show-toplevel)/zsh"

    case "$(uname)" in
        Darwin)
            brew bundle

            # Install fzf bindings and completion
            $(brew --prefix)/opt/fzf/install
        ;;
        Linux)
            nix-env -if "$dir/zsh/pkgs.nix"
        ;;
    esac

    # Install oh-my-zsh if it's not configured
    if [[ -n $ZSH  ]]; then
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    fi

    # Install antigen
    curl -L git.io/antigen > "$dir/.oh-my-zsh/custom/antigen.zsh"

    # Symlink .zshrc
    ln -s "$dir/.zshrc" "$HOME/.zshrc"

    # Symlink oh-my-zsh custom files
    ln -s "$dir"/.oh-my-zsh/custom/* "$ZSH/custom"

    # Symlink powerlevel10k config
    ln -s "$dir/.p10k.zsh" "$HOME/.p10k.zsh"

    # Install ripgrep completions
    wget -P $HOME/completions https://github.com/BurntSushi/ripgrep/blob/master/complete/_rg
)
