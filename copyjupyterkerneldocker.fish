function copyjupyterkerneldocker
  docker cp $argv[1]:$argv[2] $HOME/.local/share/jupyter/runtime/
end
