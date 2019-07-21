# Install any brew dependencies
brew bundle

# Install any python dependencies
pip install -r requirements.txt

# Install oh-my-zsh if it's not configured
if [[ -n $ZSH  ]]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Install antigen
curl -L git.io/antigen > .oh-my-zsh/custom/antigen.zsh
