function chain.links.vcs_branch
  set -q chain_vcs_branch_glyph
    or set chain_vcs_branch_glyph "⎇"

  if vcs.present
    if set -l branch_name (vcs.branch)
      echo blue
      echo "$chain_vcs_branch_glyph $branch_name"
    end
  end
end
