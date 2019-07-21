# Install any brew dependencies
brew bundle

# Install any python dependencies
pip install -r requirements.txt

# Install oh-my-zsh if it's not configured
if [[ -n $ZSH  ]]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Install antigen
curl -L git.io/antigen > "$DOTFILES/zsh/.oh-my-zsh/custom/antigen.zsh"

# Set up pure prompt branch in home directory and add symlinks
mkdir -p "$HOME/.pure-stash-branch"
ln -s "$DOTFILES/zsh/.pure-stash-branch/async.zsh" "$HOME/.pure-stash-branch/async"
ln -s "$DOTFILES/zsh/.pure-stash-branch/pure.zsh" "$HOME/.pure-stash-branch/prompt_pure_setup"

# Symlink .zshrc
ln -s "$DOTFILES/zsh/.zshrc" "$HOME/.zshrc"

# Symlink oh-my-zsh custom files
ln -s "$DOTFILES/zsh/.oh-my-zsh/custom/*.zsh" "$ZSH/custom"
