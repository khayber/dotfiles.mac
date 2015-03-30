#
# This shell prompt config file was created by promptline.vim
#
function __promptline_ps1 {
  local slice_prefix slice_suffix

  slice_prefix="${a_fg}${a_bg}${space}"
  slice_suffix="$space${a_sep_fg}"
  __promptline_wrapper "\u@\h" "$slice_prefix" "$slice_suffix"

  slice_prefix="${c_bg}${sep}${c_fg}${c_bg}${space}"
  slice_suffix="$space${c_sep_fg}"
  __promptline_wrapper "\w" "$slice_prefix" "$slice_suffix"

  printf "%s" "${reset_bg}${sep}$reset$space"
}

function __promptline_wrapper {
  printf "%s" "${2}${1}${3}"
}

function __promptline {
  local esc=$'[' end_esc=m
  local noprint='\[' end_noprint='\]'
  local wrap="$noprint$esc" end_wrap="$end_esc$end_noprint"
  local space=" "
  local sep=""
  local reset="${wrap}0${end_wrap}"
  local reset_bg="${wrap}49${end_wrap}"
  local a_fg="${wrap}38;5;236${end_wrap}"
  local a_bg="${wrap}48;5;107${end_wrap}"
  local a_sep_fg="${wrap}38;5;107${end_wrap}"
  local c_fg="${wrap}38;5;244${end_wrap}"
  local c_bg="${wrap}48;5;236${end_wrap}"
  local c_sep_fg="${wrap}38;5;236${end_wrap}"
  PS1="$(__promptline_ps1)"
}

if [[ ! "$PROMPT_COMMAND" == *__promptline* ]]; then
  PROMPT_COMMAND='__promptline;'$'\n'"$PROMPT_COMMAND"
fi
