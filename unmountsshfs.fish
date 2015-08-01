function unmountsshfs -d 'Unmount ssh directory'
    if [ (count $argv) -gt 0 ]
       set LOCALTARGET $LOCALMOUNT/$argv[1]
       fusermount -u $LOCALTARGET
    else
        echo "usage: unmountsshfs <directory>"
    end
end
