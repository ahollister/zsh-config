# Third-party tool initialisation. Keep optional tools guarded so a missing
# installation cannot break opening a new shell.

[[ -r /opt/homebrew/opt/asdf/libexec/asdf.sh ]] && source /opt/homebrew/opt/asdf/libexec/asdf.sh

if command -v pyenv >/dev/null 2>&1; then
  path=("$(pyenv root)/shims" $path)
fi

if command -v tmuxifier >/dev/null 2>&1; then
  eval "$(tmuxifier init -)"
fi

if command -v thefuck >/dev/null 2>&1; then
  eval "$(thefuck --alias)"
fi

[[ -r "$HOME/zsh-z/zsh-z.plugin.zsh" ]] && source "$HOME/zsh-z/zsh-z.plugin.zsh"

[[ -r "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
[[ -r "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"

# Conda's generated setup, retained but only enabled when installed.
conda_bin="$HOME/opt/anaconda3/bin/conda"
conda_profile="$HOME/opt/anaconda3/etc/profile.d/conda.sh"
if [[ -x $conda_bin ]]; then
  __conda_setup="$($conda_bin shell.zsh hook 2>/dev/null)"
  if [[ $? -eq 0 ]]; then
    eval "$__conda_setup"
  elif [[ -r $conda_profile ]]; then
    source "$conda_profile"
  else
    path=("${conda_bin:h}" $path)
  fi
  unset __conda_setup
fi
unset conda_bin conda_profile
