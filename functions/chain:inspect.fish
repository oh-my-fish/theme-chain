function chain:inspect -d 'Inspect your active prompt links'
  builtin set_color -u ^ /dev/null
  echo 'Active prompt links'
  builtin set_color normal ^ /dev/null

  for command in $__chain_links
    set -l segment (eval "$command")
    set -l command_status $status

    if test $command_status -gt 0
      builtin set_color red ^ /dev/null
      echo "  $command (exit code $command_status)"
      builtin set_color normal ^ /dev/null
    else
      builtin set_color blue ^ /dev/null
      echo "  $command"
      builtin set_color normal ^ /dev/null
    end

    if set -q segment[2]
      builtin set_color $segment[1] ^ /dev/null
      builtin printf '    <%s>\n' "$segment[2]"
      builtin set_color normal ^ /dev/null
    else
      builtin set_color $fish_color_autosuggestion ^ /dev/null
      echo '    (no output)'
      builtin set_color normal ^ /dev/null
    end
  end
end
