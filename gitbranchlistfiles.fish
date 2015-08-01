function gitbranchlistfiles
    git ls-tree --name-only -r $argv[1]
end
