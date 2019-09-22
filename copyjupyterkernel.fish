function copyjupyterkernel
  scp $argv[1]:.local/share/jupyter/runtime/kernel-$argv[2].json $HOME/.local/share/jupyter/runtime/
end
