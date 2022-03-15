(
    set -eo pipefail

    case "$(uname)" in
        Darwin)
            brew bundle
        ;;
        Linux)
            nix-env -if "${0:a:h}/zsh/install.zsh"
        ;;
    esac

    # Install fzf bindings and completion
    $(brew --prefix)/opt/fzf/install

    # Install oh-my-zsh if it's not configured
    if [[ -n $ZSH  ]]; then
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    fi

    # Install antigen
    curl -L git.io/antigen > "${0:a:h}/.oh-my-zsh/custom/antigen.zsh"

    # Symlink .zshrc
    ln -s "${0:a:h}/.zshrc" "$HOME/.zshrc"

    # Symlink oh-my-zsh custom files
    ln -s "${0:a:h}"/.oh-my-zsh/custom/* "$ZSH/custom"

    # Symlink powerlevel10k config
    ln -s "${0:a:h}/.p10k.zsh" "$HOME/.p10k.zsh"
)
