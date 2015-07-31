function workon
   set repo $argv[1]
   echo $WORKON_HOME
   source $WORKON_HOME/$repo/bin/activate.fish
end