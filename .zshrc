# ZSH CONFIG
############

# If you want a different path for .zshrc, 
# put only the following (uncommented) in ~/.zshrc,
# and point the path at your desired .zshrc file location
#
# if [ -r ~/.config/zsh/.zshrc ]; then
#     source ~/.config/zsh/.zshrc
# fi

ZSH_DISABLE_COMPFIX=true

# Path to your oh-my-zsh installation.
export ZSH="/Users/adam/.oh-my-zsh"
path+=('/Users/adam/.composer/vendor/bin')
path+=('/Users/adam/nvim-macos/bin')
path+=('/Users/adam/.local/bin')
path+=('/Users/adam/.tmuxifier/bin')
#path+=('/Users/adam/Library/Python/3.8/bin')

# Theme setup
ZSH_THEME="typewritten/typewritten"

export PATH

export EDITOR=nvim

# Init TMUXIFIER
eval "$(tmuxifier init -)"

# You can use whatever you want as an alias, like for Mondays:
eval $(thefuck --alias)

# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  history
)

source $ZSH/oh-my-zsh.sh

# Supposedly improves autocomplete performance
__git_files () {
    _wanted files expl 'local files' _files
}


# ALIASES
#################
alias fucking="sudo"
# CONFIG
alias zshconfig="nvim ~/.config/zsh/.zshrc"
alias vimconfig="nvim ~/.vimrc"
alias tmuxconfig="nvim ~/.config/tmux/tmux.conf"
alias tmuxreload="tmux source-file ~/.config/tmux/tmux.conf"
alias nvimconfig="cd ~/.config/nvim && nvim ."
alias karabinerconfig="nvim ~/.config/karabiner/karabiner.json"
# GIT
alias gs="git status"
alias gco="git checkout"
alias gc="git commit -m"
alias gd="git diff"
alias gitundol="git reset --soft HEAD^"

# TMUX
alias tm="tmux"
alias tmf="tmuxifier"
alias tmfl="tmuxifier load-session"
alias tmfn="tmuxifier new-session"
alias tmfe="tmuxifier edit-session"

alias l="exa -l -a --icons"

# PROJECTS
alias mecum="cd ~/Dev/AmericanEagle/MECUM/mecum-frontend && nvim ."

# AUDIO
alias fixaudio="sudo killall coreaudiod"

# PATH modifications
export PATH=/usr/local/bin/:~/Library/Android/sdk/platform-tools/:$PATH
export PATH="/Users/adam/git-fuzzy/bin:$PATH"
# Bun
export BUN_INSTALL="/Users/adam/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/usr/local/opt/php@8.0/bin:$PATH"
export PATH="/usr/local/opt/php@8.0/sbin:$PATH"

# CUSTOMIZATIONS
###################
source  ~/zsh-z/zsh-z.plugin.zsh

# USE MULTIPLE NVIM CONFIGURATIONS
##################################
alias nvim-astro="NVIM_APPNAME=AstroNvim nvim"
alias nvim-nvchad="NVIM_APPNAME=nvchad nvim"

function nvims() {
  items=("default" "AstroNvim" "nvchad")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "default" ]]; then
    config=""
  fi
  NVIM_APPNAME=$config nvim $@
}

bindkey -s ^a "nvims\n"

# SOURCE OH MY ZSH PLUGINS
############################
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/forgit/forgit.plugin.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/adam/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/adam/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/adam/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/adam/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# bun completions
[ -s "/Users/adam/.bun/_bun" ] && source "/Users/adam/.bun/_bun"

