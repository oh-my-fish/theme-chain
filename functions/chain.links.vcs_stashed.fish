function chain.links.vcs_stashed
  set -q chain_vcs_stashed_glyph
    or set -l chain_vcs_stashed_glyph '*'

  if vcs.present
    if vcs.stashed > /dev/null
      echo 999
      echo "$chain_vcs_stashed_glyph"
    end
  end
end
