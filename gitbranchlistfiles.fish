function gitbranchlistfiles
    if [ (count $argv) -gt 0 ]
       git ls-tree --name-only -r $argv[1]
    else
        echo "Usage: gitbranchlistfiles <branch>"
    end
end
