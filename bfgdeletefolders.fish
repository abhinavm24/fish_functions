function bfgdeletefolders
 set glob $argv[1]
 set repository $argv[2]
 cd $repository
 git gc
 cd ../
 java -jar $HOME/bin/bfg.jar --delete-folders $glob $repository
 cd $repository
 git reflog expire --expire=now --all
 git gc --prune=now --aggressive
end
