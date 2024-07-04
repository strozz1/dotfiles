

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
    dir=`pwd`
    echo $'Creating symbolic link for zsh terminal at "~/.zshrc"'
    ln -s $dir/.zshrc $home/
    echo $'Creating symbolic link for tmux at "~/.tmux.conf"'
    ln -s $dir/.config/tmux/tmux.conf $home/.tmux.conf
    ln -s $dir/.config/tmux/ $home/.tmux
    echo 'cloning tpm for tmux'
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    echo $'Creating symbolic link for nvim at "~/.config/nvim"'
    ln -s $dir/.config/nvim $home/.config/
    echo $'Creating symbolic link for kitty at "~/.config/kitty"'
    ln -s $dir/.config/kitty $home/.config/

    echo $'Creating symbolic link for git at "~/.gitconfig"'
    ln -s $dir/.gitconfig $home/.gitconfig






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

