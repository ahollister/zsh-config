# Completion configuration and completion-related integrations.

__git_files() {
  _wanted files expl 'local files' _files
}

zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

[[ -r "$HOME/.fzf.zsh" ]] && source "$HOME/.fzf.zsh"
[[ -r "$BUN_INSTALL/_bun" ]] && source "$BUN_INSTALL/_bun"
