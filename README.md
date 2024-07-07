# DOTFILE repository for Strozz1's environment
Naaa not working rn!, lazy
## Dependecies
- Stow [Github repo](https://github.com/aspiers/stow)
Linux `apt install stow`

MacOS `brew install stow`
- OhmyZsh [Github repo] (https://github.com/ohmyzsh/ohmyzsh)
Dowload and install
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
- Powerlevel10k [Github repo] (https://github.com/romkatv/powerlevel10k)
Theme for Ohmyzsh
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```
- OhmyZsh autosuggestions [Github repo] (https://github.com/zsh-users/zsh-autosuggestions )
```
git clone https://github.com/zsh-users/zsh-autosuggestions 
$ZSH_CUSTOM/plugins/zsh-autosuggestions
```
- OhmyZsh syntax-highlighting [Github repo] (https://github.com/zsh-users/zsh-syntax-highlighting)
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git 
$ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```
- Systemd [Github repo] (https://github.com/Spotifyd/spotifyd/releases)
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
- TPM for Tmux[Github repo](https://github.com/tmux-plugins/tpm)
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
- Eza [Github repo](https://github.com/eza-community/eza)
Replacement for ls

Linux `sudo apt install eza`

MacOS `brew install eza`

- Bat [Github repo]()
Replacement for cat cmd

Linux `sudo apt install bat`

MacOS `brew install bat`

## Setup

Install stow package for managing your .dotfiles
execute 
```
stow <Config_Name> --target ~
```
Config_name is the name of the folder of your different configurations.
Execute the following command 
```sh
sudo sh setup.sh
```

Font: Meslo Nerdfont Bold
### Zsh
Using Powelevel10k for cmd style.

### Bat
Better version of Cat
Theme is installed on .config/bat/themes
Run 'batcat cache --build' for installing

For using the theme add to .zshrc
'export BAT_THEME=<NAME>'
Using 'https://github.com/catppuccin/bat'

### Eza
Better version of ls
Github 'https://github.com/eza-community/eza'

### Tmux
For tmux git, install 'https://github.com/arl/gitmux'

Spotify player:
For enable player run playerctl on start runtime
- playerctl 'https://github.com/altdesktop/playerctl'
- 

## Fzf
Keybind Ctrl T for preview of file/folder


## List of dotfiles

- Nvim
- Tmux
- zsh
- kitty
- i3
- i3status
- rofi
- git



