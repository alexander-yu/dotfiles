# Install any python dependencies
pip install -r requirements.txt

# Symlink .pythonstartup
ln -s "$DOTFILES/python/.pythonstartup" "$HOME/.pythonstartup"
