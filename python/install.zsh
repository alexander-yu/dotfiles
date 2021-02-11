# Install any python dependencies
pip install -r requirements.txt

# Symlink .pythonstartup
ln -s "${0:a:h}/.pythonstartup" "$HOME/.pythonstartup"
