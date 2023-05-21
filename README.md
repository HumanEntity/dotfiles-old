# Dotfiles
This is my dotfiles repo where I store my configs.

# Installation

## Configs

1. Clone repo
```bash
git clone https://github.com/HumanEntity/dotfiles
```

2. Cd into it
```bash
cd dotfiles
```

3. Link or copy these configs to appropriate location
e.g.

```bash
ln -s ./config/nvim ~/.config/nvim
ln -s ./config/tmux ~/.config/tmux
ln -s ./config/alacritty ~/.config/alacritty
```

### Scripts

To install scripts to your enviroment just add them to your `$PATH`. e.g.

```bash
export PATH=$PATH:~/dev/dotfiles/scripts/
```

**NOTE**: `~/dev/dotfiles` is location of this repo
