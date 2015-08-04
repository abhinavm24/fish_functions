function mountsshfs -d 'mount sshfs: mountsshfs <hostname> <remote path>'
    # The value for remote follows the scp syntax -- <ssh address>:<path>
    echo "Assumes LOCALMOUNT is a writeable path (e.g. /tmp/sshfsmount)"
    if [ (count $argv) -gt 1 ]
       set HOSTNAME  $argv[1]
       set SOURCE  $argv[2]

       set LOCALTARGET $LOCALMOUNT/$SOURCE
       set REMOTE $HOSTNAME:$SOURCE
       if test -d $LOCALTARGET
          # directory exists
          echo $LOCALTARGET exists, not creating
       else
           echo Creating local mount point: $LOCALTARGET
           mkdir -p $LOCALTARGET
       end

       set COMMAND "sshfs -o idmap=user $REMOTE $LOCALTARGET/"
       echo "$COMMAND"
       sshfs -o idmap=user $REMOTE $LOCALTARGET

   else
       echo "Usage: mountsshfs <remote path> <hostname>"
   end        
    
end
    
