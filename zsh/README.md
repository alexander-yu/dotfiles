# [zsh](https://www.zsh.org/)

- Installs [oh-my-zsh](https://ohmyz.sh/)
- Installs [bat](https://github.com/sharkdp/bat) and [eza](https://github.com/eza-community/eza)
  - Not really a zsh thing, but it's part of my zsh config
- Installs [antigen](http://antigen.sharats.me/)
- Creates a symlink for `.zshrc` to point to the one here, loads in a few useful zsh plugins, and sets up [powerlevel10k](https://github.com/romkatv/powerlevel10k) as the shell theme
- Creates symlinks for my oh-my-zsh custom files, which sets aliases (such as `cat` for `bat`, `ls` for `eza`, etc.), exports, functions, completions, etc.
- Creates a symlink for `.p10k.zsh` to point to the one here (it's the config file for powerlevel10k)
