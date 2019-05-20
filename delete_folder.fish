function delete_folder
 set FOLDER  /tmp/empty_(uuidgen)/
 mkdir $FOLDER
 rsync -a --delete $FOLDER $argv[1]
end
