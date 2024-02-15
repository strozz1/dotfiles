

update(){
    echo "TODO update system"
}

arch(){
    echo "Executing setup for Arch Linux"
    echo "Do you want to update your system? 
    Warning: this may cause some errors, so make sure to have a backup of your system
    (y/n)"
    read update
    case $update in  
        y|Y|yes|YES) echo "Updating your system" 
            update
            ;; 
        *) echo "System update will not take place."
            ;; 
    esac
    echo "Installing some necessary packages"

    echo "Installing neovim"
    pacman -S neovim
    echo "Installing tmux"
    pacman -S tmux
    echo "Installing Kitty Terminal"
    pacman -S kitty
    echo "Installing fzf"
    pacman -S fzf

    echo "Installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


    echo "All necessary packages installed!"
}

move_files(){
    home="/home/oscar"
    echo $'Creating symbolic link for zsh terminal at \u001b[1m\u001b[34m"~/.zshrc"\u001b[0m'
    ln -s $home/develop/dotfiles/.zshrc $home/.zshrc
    echo $'Creating symbolic link for tmux at \u001b[1m\u001b[34m"~/.config/tmux"\u001b[0m'
    ln -s $home/develop/dotfiles/.config/tmux $home/.config/tmux
    echo $'Creating symbolic link for nvim at \u001b[1m\u001b[34m"~/.config/nvim"\u001b[0m'
    ln -s $home/develop/dotfiles/.config/nvim $home/.config/nvim
    echo $'Creating symbolic link for i3 at \u001b[1m\u001b[34m"~/.config/i3"\u001b[0m'
    ln -s $home/develop/dotfiles/.config/i3 $home/.config/i3
    echo $'Creating symbolic link for i3status at \u001b[1m\u001b[34m"~/.config/i3status"\u001b[0m'
    ln -s $home/develop/dotfiles/.config/i3status $home/.config/i3status
    echo $'Creating symbolic link for kitty at \u001b[1m\u001b[34m"~/.config/kitty"\u001b[0m'
    ln -s $home/develop/dotfiles/.config/kitty $home/.config/kitty

    echo $'Creating symbolic link for git at \u001b[1m\u001b[34m"~/.gitconfig"\u001b[0m'
    ln -s $home/develop/dotfiles/.gitconfig $home/.gitconfig
    echo $'Creating symbolic link for rofi at \u001b[1m\u001b[34m"~/.config/rofi"\u001b[0m'
    ln -s $home/develop/dotfiles/.config/rofi $home/.config/rofi





}







if [ $UID -ne 0 ]; then
    echo "ERROR: you need to be in sudo mode!"
    exit;
fi
echo "Setup initialized."
echo "Which platform are you in?
1. Arch
2. Windows 
3. Linux
(default: 1):"

read selection

case $selection in
    1)
        echo "Platform selected: Arch Linux"
        arch
        ;;
    2)
        echo "Platform selected: Windows"
        ;;
    3)
        echo "Platform selected: Linux"
        ;;
    *)
        echo "Platform selected: Arch Linux"
        ;;
esac
move_files

