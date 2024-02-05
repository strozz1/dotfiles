



arch(){
    echo "Executing setup for Arch Linux"
    echo "Some packages are necessary to install"

    echo "Installing neovim"
    pacman -S neovim
    echo "Installing tmux"
    pacman -S tmux
    echo "Installing Kitty Terminal"
    pacman -S kitty
    #echo "Installing oh-my-zsh"
    #sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


    echo "All necessary packages installed!"
}

move_files(){

    echo "Updating ~/.config with configs:{'nvim', 'tmux', 'kitty'}"
    cp -r .config ~/
    echo "Done!"
    echo "Updating zsh config"
    cp .zshrc ~/
    echo "Done!"
}





echo "----Setup initialized. Make sure you are in sudo mode!!!"

echo "----Which platform are you in?
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

