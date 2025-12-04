if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
#Theme
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git sudo history encode64 copypath zsh-autosuggestions zsh-syntax-highlighting fzf)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=60'
source $ZSH/oh-my-zsh.sh



#If on WSL windows, change ssh to .exe. THis is because I use 1password installed on windows
 uname -a | grep -q 'microsoft' 
if [ $? -eq 0 ]; then
    alias ssh="ssh.exe"
    alias ssh-add="ssh-add.exe"
    alias bat
fi
#Aliases
alias vim=\"nvim\"
alias ta='tmux attach'
alias vims='nvim $(fzf --preview="bat --color=always {}")'
alias get_idf='. $HOME/proyects/esp32/esp-idf/export.sh'
alias clr="clear"
alias ll="lsd -l"
alias la="lsd -la"
alias ls="lsd"
bindkey "^L" clear-screen
#Unussed aliases
#alias oldcat="cat"
#alias cat="bat"
#alias ls="eza --color=always --long --git --no-filesize --icons always --no-time --no-user --no-permissions"
#export FZF_CTRL_T_OPTS="--preview 'batcat -n --color=always --line-range :500 {}'"
#export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} |head -200'"
#export BAT_THEME="Catppuccin Mocha"

source <(fzf --zsh)

# Eza previews

if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='nvim'
fi

export DOTNET_ROOT=$HOME/.dotnet
export LANG=en_US.UTF-8
#export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.scripts
export PATH=$PATH:$DOTNET_ROOT
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

export LLVM_DIR=/opt/LLVM-21

. "$HOME/.cargo/env"

source ~/.oh-my-zsh/custom/themes/powerlevel10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#nix
. "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"
