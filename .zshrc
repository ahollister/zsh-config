# Interactive Zsh configuration loader. Keep this file intentionally small.

[[ -o interactive ]] || return

typeset -U path PATH

source "$HOME/.config/zsh/environment.zsh"
source "$HOME/.config/zsh/path.zsh"
source "$HOME/.config/zsh/oh-my-zsh.zsh"
source "$HOME/.config/zsh/aliases.zsh"
source "$HOME/.config/zsh/functions.zsh"
source "$HOME/.config/zsh/completion.zsh"
source "$HOME/.config/zsh/integrations.zsh"
source "$HOME/.config/zsh/welcome.zsh"

# Personal, machine-specific configuration. The local directory ignores its
# contents if this configuration becomes a dotfiles repository.
[[ -r "$HOME/.config/zsh/local/local.zsh" ]] && source "$HOME/.config/zsh/local/local.zsh"
