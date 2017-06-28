function chain.push -a command -d 'Adds a link to your prompt chain'
  # Add the command to the global list of links.
  set -U chain_links $chain_links "$command"

  # If the user runs this command, recompile the prompt for them so that their changes are immediately visible.
  if test "$_" = chain.push
    chain.compile
  end
end
