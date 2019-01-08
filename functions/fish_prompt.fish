function fish_prompt
  # Save the status code from the previous command.
  set -l __chain_last_status $status
  set -l IFS ''

  set -q chain_prompt_glyph
    or set chain_prompt_glyph ">"

  # If links aren't configured, set the defaults.
  set -q chain_links
    or chain.defaults

  # Compile the prompt if it is not already.
  type -fq __chain_compiled_prompt
    or chain.compile

  # Display all links.
  if set -q chain_multiline
    printf '┌%s\n└' (__chain_compiled_prompt)
  else
    printf '%s-' (__chain_compiled_prompt)
  end

  # Prompt arrow with status of last command.
  if test $__chain_last_status = 0
    builtin set_color green 2> /dev/null
  else
    builtin set_color $fish_color_error 2> /dev/null
    echo -n "$__chain_last_status-"
  end

  echo -n "$chain_prompt_glyph "

  builtin set_color normal 2> /dev/null
end
