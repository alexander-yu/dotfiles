# Install any brew dependencies
brew bundle

# Install fzf bindings and completion
$(brew --prefix)/opt/fzf/install

# Install oh-my-zsh if it's not configured
if [[ -n $ZSH  ]]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Install antigen
curl -L git.io/antigen > "$(readlink -f $(dirname $0))/.oh-my-zsh/custom/antigen.zsh"

# Symlink .zshrc
ln -s "$(readlink -f $(dirname $0))/.zshrc" "$HOME/.zshrc"

# Symlink oh-my-zsh custom files
ln -s "$(readlink -f $(dirname $0))"/.oh-my-zsh/custom/* "$ZSH/custom"

# Symlink powerlevel10k config
ln -s "$(readlink -f $(dirname $0))/.p10k.zsh" "$HOME/.p10k.zsh"
