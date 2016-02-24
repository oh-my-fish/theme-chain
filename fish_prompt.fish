set __chain_git_branch_glyph "⎇"
set __chain_git_dirty_glyph "±"
set __chain_prompt_glyph ">"
set __chain_su_glyph "⚡"

function prompt_segment
  set_color $argv[1]
  echo -n -s "[" $argv[2..-1] "]─"
  set_color normal
end

function _git_branch_name
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty ^/dev/null)
end

function prompt_root
  set -l uid (id -u $USER)
  if test $uid -eq 0
    prompt_segment yellow $__chain_su_glyph
  end
end

function prompt_dir
  prompt_segment cyan (prompt_pwd)
end

function prompt_git
  if test (_git_branch_name)
    set -l git_branch (_git_branch_name)
    prompt_segment blue "$__chain_git_branch_glyph $git_branch"

    if test (_is_git_dirty)
      prompt_segment yellow $__chain_git_dirty_glyph
    end
  end
end

function prompt_arrow
  if test $last_status = 0
    set_color green
  else
    set_color red
    echo -n "($last_status)-"
  end

  echo -n "$__chain_prompt_glyph "
end

function fish_prompt
  set -g last_status $status

  prompt_root
  prompt_dir
  type -q git; and prompt_git
  prompt_arrow

  set_color normal
end
