function chain.unshift -a command -d 'Like chain.push, but inserts link at the bottom'
  # Add the command to the global list of links.
  set -U chain_links "$command" $chain_links

  # If the user runs this command, recompile the prompt for them so that their changes are immediately visible.
  if test "$_" = chain.shift
    chain.compile
  end
end
