function chain.links.pwd
  set -q chain_project_glyph
    or set -l chain_project_glyph '@'

  set -l prefix ''
  set -l path "$PWD"

  # Replace either HOME with ~ or abbreviate project root.
  if vcs.present
    set path (string replace (vcs.root) '' "$path")
    set prefix @(basename (vcs.root))
  else
    set path (string replace ~ '~' "$path")
  end

  # Shorten path segments.
  set path (string replace -ar '(\.?[^/]{1})[^/]*/' '$1/' "$path")

  echo cyan
  echo "$prefix$path"
end
