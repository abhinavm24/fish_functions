function showfunction
    for name in $argv
        cat ~/.config/fish/functions/$name.fish
    end
end
