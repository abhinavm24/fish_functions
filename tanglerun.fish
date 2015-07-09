function tanglerun
    for name in $argv
        set base (basename $name .pnw)
        Ptangle $name
        python $base".py"
    end
end
