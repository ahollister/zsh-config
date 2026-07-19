# REVIEW ONLY — THIS FILE IS INTENTIONALLY NOT SOURCED.
#
# These lines were deliberately kept out of the active startup path. Review
# and reintroduce an item into the appropriate module only if you still want
# it. The rest of the prior configuration was migrated into the active files.

# This attempted to source the filesystem root and caused a startup error.
source /

# Oh My Zsh already loads zsh-autosuggestions through `plugins`, so the manual
# load was duplicate work at shell startup.
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# These produced visual side effects every time any interactive shell opened.
setopacity 0.9
clear

# This historical path uses a different macOS account name. It was not moved
# into path.zsh; add it back there only if it is still genuinely required.
export PATH=$PATH:/Users/adam/.spicetify

# Moved to ~/Dev/scriptkid/bin/fzfcopy.
# fzf selection copied to the clipboard; Enter then exits fzf.
fzfcopy() {
  fzf --bind 'enter:execute-silent(echo -n {+} | pbcopy)+abort'
}
