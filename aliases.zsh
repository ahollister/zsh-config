# Shell aliases.

alias fixterminal='stty sane'
alias fucking='sudo'

# Configuration
alias zshconfig='nvim ~/.config/zsh/.zshrc'
alias config='nvim ~/.config'
alias vimconfig='nvim ~/.vimrc'
alias tmuxconfig='nvim ~/.config/tmux/tmux.conf'
alias tmuxreload='tmux source-file ~/.config/tmux/tmux.conf'
alias nvimconfig='cd ~/.config/nvim && nvim .'
alias kittyconfig='cd ~/.config/kitty && nvim kitty.conf'
alias alacrittyconfig='nvim ~/.config/alacritty/alacritty.toml'
alias karabinerconfig='nvim ~/.config/karabiner/karabiner.json'
alias aerospaceconfig='nvim ~/.config/aerospace/aerospace.toml'
alias hosts='sudo nvim /private/etc/hosts'
alias dnsflush='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'

# Git
alias gs='git status'
alias gco='git checkout'
alias gc='git commit -m'
alias gd='git diff'
alias gitundol='git reset --soft HEAD^'

# Tmux
alias tm='tmux'
alias tmf='tmuxifier'
alias tmfl='tmuxifier load-session'
alias tmfn='tmuxifier new-session'
alias tmfe='tmuxifier edit-session'

# Agentdeck roadmap
alias roadmap='emacs ~/org/projects/agentdeck/roadmap.org'
alias idea="ejump ~/org/projects/agentdeck/roadmap.org 'Ideas'"
alias bug="ejump ~/org/projects/agentdeck/roadmap.org 'Bugs'"

# Terminal and editor
alias remotecontrol='kitty -o allow_remote_control=yes -o enabled_layouts=tall'
alias setopacity='kitten @ set-background-opacity'
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias v='nvim'

alias fixaudio='sudo killall coreaudiod'
