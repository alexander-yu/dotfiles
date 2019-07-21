# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install any brew dependencies
brew bundle

# Set dotfiles path
export DOTFILES=$(pwd)
