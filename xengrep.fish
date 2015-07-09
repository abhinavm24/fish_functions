function xengrep
    ssh XenBox "cd $XENMOUNTROOT; grep " $argv
end
