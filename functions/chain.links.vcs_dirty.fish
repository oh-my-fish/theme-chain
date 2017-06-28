function chain.links.vcs_dirty
  set -q chain_vcs_dirty_glyph
    or set chain_vcs_dirty_glyph "±"

  if vcs.present
    if vcs.dirty
      echo purple
      echo "$chain_vcs_dirty_glyph"
    end
  end
end
