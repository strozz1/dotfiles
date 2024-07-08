# DOTFILE repository for Strozz1's environment
Naaa not working rn!, lazy
## Dependecies
### Stow 
[Documentation](https://github.com/aspiers/stow)
  
Linux `apt install stow`

MacOS `brew install stow`
### OhmyZsh 
[Documentation](https://github.com/ohmyzsh/ohmyzsh)
  
Dowload and install
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
### Powerlevel10k 
[Documentation](https://github.com/romkatv/powerlevel10k)
  
Theme for Ohmyzsh
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```
### OhmyZsh autosuggestions 
[Documentation](https://github.com/zsh-users/zsh-autosuggestions )
```
git clone https://github.com/zsh-users/zsh-autosuggestions 
$ZSH_CUSTOM/plugins/zsh-autosuggestions
```
### OhmyZsh syntax-highlighting 
[Documentation](https://github.com/zsh-users/zsh-syntax-highlighting)
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git 
$ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```
### Spotifyd 
[Documentation](https://github.com/Spotifyd/spotifyd/releases)

Download and install the binary files.

Linux
```
wget https://github.com/Spotifyd/spotifyd/releases/download/v0.3.5/spotifyd-linux-default.tar.gz |
tar spotifyd-linux-default.tar.gz |
mv spotifyd /usr/bin/
```

MacOS
```
wget https://github.com/Spotifyd/spotifyd/releases/download/v0.3.5/spotifyd-macos-default.tar.gz
tar -xvf https://github.com/eza-community/eza
mv spotfiyd /usr/local/bin/
```
### TPM for Tmux 
[Documentation](https://github.com/tmux-plugins/tpm)
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
### Tmux git 
[Documentation](https://github.com/arl/gitmux)
Git plugin for tmux status bar

### Playerctl 
[Documentation](https://github.com/altdesktop/playerctl)

For enable player run playerctl on start runtime

### Eza 
[Documentation](https://github.com/eza-community/eza)

Replacement for ls

Linux `sudo apt install eza`

MacOS `brew install eza`

### Bat 
[Documentation](https://github.com/catppuccin/bat)

Replacement for cat 

Linux `sudo apt install bat`

MacOS `brew install bat`

Theme is installed at `.config/bat/themes`

Run `batcat cache --build` for installing 

For using the theme append to .zshrc `export BAT_THEME=<NAME>`

## Setup file

Install stow package for managing your .dotfiles

Run this command 
```
stow <Config_Name> --target ~
```
Config_name is the name of the folder of your different configurations.

Execute the following command 
```sh
sudo sh setup.sh
```
## Current .dotfiles
Font: Meslo Nerdfont Bold
### Zsh
Using Powelevel10k for cmd style.

### Nvim
You can find the repo [here](https://neovim.io/)

### Tmux
You can find the repo [here](https://github.com/tmux/tmux/wiki)

### Fzf
Keybind Ctrl T for preview of file/folder



