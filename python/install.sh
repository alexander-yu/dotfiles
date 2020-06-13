# Install any python dependencies
pip install -r requirements.txt

# Symlink .pythonstartup
ln -s "$(pwd)/python/.pythonstartup" "$HOME/.pythonstartup"
