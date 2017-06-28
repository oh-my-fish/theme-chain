function chain.pop -d 'Removes the top link from your prompt chain'
  if set -q chain_links[-1]
    set -e chain_links[-1]
  end

  # If the user runs this command, recompile the prompt for them so that their changes are immediately visible.
  if test "$_" = chain:pop
    chain.compile
  end
end
