function delete-empty-folders-help
  echo "Removes empty folders from a root folder."
  echo "Usage:"
  echo ""
  echo "  delete-empty-folders <root-folder>"
end

function delete-empty-folders
  if count $argv > /dev/null
     set directory_source $argv[1]
     echo "Removing empty folders from '$directory_source'"
     find $directory_source -empty -type d -delete
  else
      echo "Need a root-folder to start the search. Not doing anything."
      echo ""
      delete-empty-folders-help
  end
end
