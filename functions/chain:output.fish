function chain:output -d 'Outputs a chain prompt segment'
  set_color $argv[1]
  echo -n -s "<" $argv[2..-1] ">─"
  set_color normal
end
