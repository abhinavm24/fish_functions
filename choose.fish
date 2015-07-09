function choose
    for name in $argv
        echo (python -c "import random; print random.choice(open('"$name"').readlines())")
    end
end
