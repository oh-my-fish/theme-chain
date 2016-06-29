function chain:compile -d 'Compiles the prompt'
  set -l IFS ''
  eval (begin
    echo 'function __chain_do_prompt_links'
    echo 'set -l IFS "\n"'

    for command in $__chain_links
      echo "
        set -l segment ($command)

        if set -q segment[2]
          builtin set_color \$segment[1] ^ /dev/null
          builtin printf '<%s>─' \"\$segment[2]\"
          builtin set_color normal ^ /dev/null
        end
      "
    end

    echo 'end'
  end)
end
