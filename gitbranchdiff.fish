function gitbranchdiff
    git diff --name-status $argv[1]..$argv[2]
end
