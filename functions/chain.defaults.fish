function chain.defaults -d 'Reset prompt links to defaults'
  set -e chain_links

  chain.push chain.links.root
  chain.push chain.links.jobs
  chain.push chain.links.pwd
  chain.push chain.links.vcs_branch
  chain.push chain.links.vcs_dirty
  chain.push chain.links.vcs_stashed
end
