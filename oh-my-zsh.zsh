# Oh My Zsh must load after environment and PATH setup.

export ZSH_DISABLE_COMPFIX=true
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="typewritten/typewritten"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  history
)

[[ -r "$ZSH/oh-my-zsh.sh" ]] && source "$ZSH/oh-my-zsh.sh"
