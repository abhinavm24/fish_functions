function renamebranch
 set --export OLD $argv[1]
 set --export NEW $argv[2]

 echo "Renaming $OLD to $NEW"
 git branch -m $OLD $NEW
 echo "Deleting remote $OLD"
 git push origin --delete $OLD
 echo "Creating remote $NEW"
 git push origin $NEW
end
