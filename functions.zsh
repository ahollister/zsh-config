# Shell functions.

# Jump to a specific Org heading and begin a new child entry.
# Usage: ejump ~/notes/work.org "Demo Readiness"
ejump() {
  local file="$1"
  local heading="$2"
  emacsclient -t --eval "(my/org-jump-new-child \"$file\" \"$heading\")"
}
