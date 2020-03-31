function copyjupyterkernel
  scp $argv[1]:/run/user/1000/jupyter/kernel-$argv[2].json $HOME/.local/share/jupyter/runtime/
end
