# A quick interactive-shell welcome. Keep this fast and free of network calls.

clear

shell_border='────────────────────────────────────────────────────────'
shell_machine_name=$(hostname -s)
shell_top_prefix="╭─[ shell ]───[ $shell_machine_name ]"
shell_top_fill=$(( ${#shell_border} + 1 - ${#shell_top_prefix} ))
(( shell_top_fill < 0 )) && shell_top_fill=0
shell_top="$shell_top_prefix${shell_border[1,$shell_top_fill]}"

print -P "%F{blue}$shell_top%f"
print -P "  %F{cyan}%D{%a, %d %b · %H:%M}%f  %F{green}%~%f"
uptime_summary=$(uptime | sed -E 's/^.* up (.*), [0-9]+ users?, load averages:.*$/\1/')
print -P "  %F{yellow}Uptime:%f %F{white}$uptime_summary%f"
unset uptime_summary

scriptkid_welcome() {
  local script line summary
  local -a scripts
  local scriptkid_bin="$HOME/Dev/scriptkid/bin"

  scripts=("$scriptkid_bin"/*(N))
  (( $#scripts )) || return

  print
  print -P '  %F{yellow}User commands:%f'

  for script in $scripts; do
    [[ -f $script && -x $script ]] || continue
    summary=''

    while IFS= read -r line; do
      case $line in
        '# summary: '*)
          summary="${line#'# summary: '}"
          break
          ;;
      esac
    done < "$script"

    [[ -n $summary ]] && print -P "    %F{green}${script:t}%f %F{white}—%f %F{cyan}$summary%f"
  done
}

scriptkid_welcome
unset -f scriptkid_welcome

print -P "%F{blue}╰$shell_border%f"
unset shell_border shell_machine_name shell_top_prefix shell_top_fill shell_top
