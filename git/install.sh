# Install any brew dependencies
brew bundle

# Install watchman hook
curl https://raw.githubusercontent.com/git/git/master/templates/hooks--fsmonitor-watchman.sample -o /usr/local/bin/fsmonitor-watchman
chmod +x /usr/local/bin/fsmonitor-watchman

# Install git-recall
npm install -g git-recall

# Include git config
git config --global include.path "$DOTFILES/git/.gitconfig"
