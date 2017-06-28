function chain.multiline -d 'Toggle multi-line mode on and off'
  set -q chain_multiline
    and set -e chain_multiline
    or set -U chain_multiline

  return 0
end
