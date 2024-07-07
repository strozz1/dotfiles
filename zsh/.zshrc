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

#Alias
alias vim=\"nvim\"
alias docker="sudo docker"
alias oldcat=cat
alias batcat=bat
alias cat="batcat"
alias ls="eza --color=always --long --git --no-filesize --icons always --no-time --no-user --no-permissions"
alias vims='nvim $(fzf --preview="batcat --color=always {}")'


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
#Bat theme
export BAT_THEME=catppuccin
#spotifyd
export PATH="$PATH:/opt/nvim-linux64/bin"
export GOPATH=$HOME/go 
export GOROOT=/usr/local/go 
export GOBIN=$GOPATH/bin 
export PATH=$PATH:$GOPATH 
export PATH=$PATH:$GOROOT
export PATH=$PATH:/usr/local/go/bin

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
