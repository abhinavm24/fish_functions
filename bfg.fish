function bfg
  set repository $argv
  cd $repository
  git gc
  cd ../  
  java -jar $HOME/bin/bfg.jar --strip-blobs-bigger-than 50M $repository
  cd $repository
  git reflog expire --expire=now --all
  git gc --prune=now --aggressive
end
