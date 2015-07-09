function unmountxen
    if [ (count $argv) -gt 0 ]
        set LOCALXEN $XENLOCAL$argv[1]
    else
        set LOCALXEN $XENLOCAL$XENMOUNT
    end

    fusermount -u $LOCALXEN
end
