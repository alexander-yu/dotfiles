(
    set -eo pipefail

    case "$(uname)" in
        Darwin)
            brew bundle
        ;;
        Linux)
            nix-env -if $(git rev-parse --show-toplevel)/zsh/install.zsh
        ;;
    esac

    # Install fzf bindings and completion
    $(brew --prefix)/opt/fzf/install

    # Install oh-my-zsh if it's not configured
    if [[ -n $ZSH  ]]; then
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    fi

    local repo=$(git rev-parse --show-toplevel)

    # Install antigen
    curl -L git.io/antigen > "$repo/zsh/.oh-my-zsh/custom/antigen.zsh"

    # Symlink .zshrc
    ln -s "$repo/zsh/.zshrc" "$HOME/.zshrc"

    # Symlink oh-my-zsh custom files
    ln -s "$repo/zsh"/.oh-my-zsh/custom/* "$ZSH/custom"

    # Symlink powerlevel10k config
    ln -s "$repo/zsh/.p10k.zsh" "$HOME/.p10k.zsh"
)
