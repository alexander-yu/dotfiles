# [zsh](https://www.zsh.org/)

- Installs [oh-my-zsh](https://ohmyz.sh/)
- Installs [bat](https://github.com/sharkdp/bat) and [exa](https://github.com/ogham/exa)
- Installs [virtualenvwrapper](https://virtualenvwrapper.readthedocs.io/en/latest/)
  - Not really a zsh thing, but it's part of my zsh config
- Installs [antigen](http://antigen.sharats.me/)
- Creates a symlink for `.zshrc` to point to the one here, which uses the forked pure prompt above, activates virtualenvwrapper, and loads in a few useful zsh plugins
- Creates symlinks for my oh-my-zsh custom files, which sets aliases (such as `cat` for `bat`, `ls` for `exa`, etc.), exports, functions, completions, etc.
