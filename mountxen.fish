function mountxen
    # The value for remote follows the scp syntax -- <ssh address>:<path>
    if [ (count $argv) -gt 0 ]
        set LOCALXEN $XENLOCAL$argv[1]
        set REMOTE XenBox:$argv[1]
    else
        set LOCALXEN $XENLOCAL$XENMOUNT
        set REMOTE XenBox:$XENMOUNT
    end

    if test -d $XENLOCAL
        # directory exists
        echo $LOCAL exists, not creating
    else
        echo Creating local mount point: $XENLOCAL
        mkdir $XENLOCAL
    end
    
    if test -d $LOCALXEN
        echo "$LOCALXEN exists, not creating"
    else
        mkdir $LOCALXEN
    end
    echo "Mounting $XENPATH at $LOCALXEN"
    sshfs -o idmap=user $REMOTE $LOCALXEN
    
end
    
