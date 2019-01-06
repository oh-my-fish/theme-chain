function chain.compile -d 'Compiles the prompt'
  set -l IFS ''

  set -q chain_link_open_glyph
    or set chain_link_open_glyph "<"

  set -q chain_link_close_glyph
    or set chain_link_close_glyph ">"

  begin
    echo 'function __chain_compiled_prompt'
    echo 'set -l IFS "\n"'

    for command in $chain_links
      echo "
        set -l segment ($command)

        if set -q segment[2]
          builtin set_color \$segment[1] 2> /dev/null

          set -q next
            and echo -n '-'
            or set next

          builtin printf '$chain_link_open_glyph%s$chain_link_close_glyph' \"\$segment[2]\"
        end
      "
    end

    echo 'builtin set_color normal 2> /dev/null'
    echo 'end'
  end | source
end
