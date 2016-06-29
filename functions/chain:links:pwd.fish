function chain:links:pwd
  set -q chain_project_glyph
    or set -l chain_project_glyph '@'

  echo cyan
  if vcs.present
    string replace (vcs.root) "$chain_project_glyph" "$PWD"
  else
    prompt_pwd
  end
end
