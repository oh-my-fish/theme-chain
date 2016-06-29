function fish_prompt
  # Save the status code from the previous command.
  set -l __chain_last_status $status

  set -q chain_prompt_glyph
    or set chain_prompt_glyph ">"

  # Display all links.
  if set -q chain_multiline
    printf '┌'
    __chain_do_prompt_links
    printf '\n└'
  else
    __chain_do_prompt_links
  end

  # Prompt arrow with status of last command.
  if test $__chain_last_status = 0
    set_color green
  else
    set_color red
    echo -n "$__chain_last_status-"
  end

  echo -n "$chain_prompt_glyph "

  set_color normal
end
