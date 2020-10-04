function copyjupyterkernel
  scp $argv[1]:.local/share/jupyter/runtime/$argv[2] $HOME/.local/share/jupyter/runtime/
end
