function remotejupyter
  scp $argv[1]:.local/share/jupyter/runtime/$argv[2] $HOME/.local/share/jupyter/runtime/
  jupyter console --ssh $argv[1] --existing $argv[2]
end
