if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
#Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git sudo history encode64 copypath zsh-autosuggestions zsh-syntax-highlighting fzf)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=60'
source $ZSH/oh-my-zsh.sh

#Aliases
alias vim=\"nvim\"

#If on WSL windows, change ssh to .exe. THis is because I use 1password installed on windows
 uname -a | grep -q 'microsoft' 
if [ $? -eq 0 ]; then
    alias ssh="ssh.exe"
    alias ssh-add="ssh-add.exe"
fi
alias vims='nvim $(fzf --preview="batcat --color=always {}")'
alias get_idf='. $HOME/proyects/esp32/esp-idf/export.sh'

#Unussed aliases
#alias oldcat="cat"
#alias cat="bat"
#alias ls="eza --color=always --long --git --no-filesize --icons always --no-time --no-user --no-permissions"

source <(fzf --zsh)
# Eza previews
export FZF_CTRL_T_OPTS="--preview 'batcat -n --color=always --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} |head -200'"


# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

export LANG=en_US.UTF-8
export BAT_THEME="Catppuccin Mocha"
export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$HOME/go/bin"
source ~/.oh-my-zsh/custom/themes/powerlevel10k

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH=$HOME/.local/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
