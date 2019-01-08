function chain.inspect -d 'Inspect your active prompt links'
  if not functions -q __chain_compiled_prompt
    builtin set_color red 2> /dev/null
    echo "Prompt is not compiled!"
    builtin set_color normal 2> /dev/null
    echo
  end

  echo 'Active prompt links'

  for command in $__chain_links
    set -l segment (eval "$command")
    set -l command_status $status

    if test $command_status -gt 0
      builtin set_color red 2> /dev/null
      echo "  $command (exit code $command_status)"
      builtin set_color normal 2> /dev/null
    else
      builtin set_color blue 2> /dev/null
      echo "  $command"
      builtin set_color normal 2> /dev/null
    end

    if set -q segment[2]
      builtin set_color $segment[1] 2> /dev/null
      builtin printf '    <%s>\n' "$segment[2]"
      builtin set_color normal 2> /dev/null
    else
      builtin set_color $fish_color_autosuggestion 2> /dev/null
      echo '    (no output)'
      builtin set_color normal 2> /dev/null
    end
  end

  echo
  echo 'Compiled prompt'

  functions -q __chain_compiled_prompt
    and type __chain_compiled_prompt
end
