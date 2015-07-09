function tanglenose
    for name in $argv
        set base (basename $name .pnw)
        Ptangle $name
        nosetests $base".py"
    end
end
