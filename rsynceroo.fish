function rsynceroo
    rsync -ravz $argv[0] $argv[1]
    rsync -ravz $argv[1] $argv[0]
end
