# .dotfiles

My personal dotfile setup.

## How This Works

The dotfiles are stored within packages to be unpacked by `stow`.

```shell
# Install `stow`.
sudo apt install stow

# Check out the repo.
git clone git@github.com:U-DON/.dotfiles.git ~/.dotfiles

# Go to the cloned directory, where all the packages live.
cd ~/.dotfiles

# Start unpacking the packages.
stow zsh
stow vim
stow neovim
stow git
```

## Other Installations

### Zsh

https://github.com/ohmyzsh/ohmyzsh

```shell
sudo apt install zsh
```

https://github.com/romkatv/powerlevel10k

```shell
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```

### Neovim

https://github.com/neovim/neovim

```shell
sudo apt install neovim
```

### asdf

https://github.com/asdf-vm/asdf
https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/asdf

```shell
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
```

### ripgrep (rg)

https://github.com/BurntSushi/ripgrep

```shell
sudo apt install ripgrep
```

### scm_breeze

https://github.com/scmbreeze/scm_breeze

```shell
git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh
```
