function tanglecheck
    for name in $argv
        Ptangle $name

        set base (basename -s .pnw $name)
        pyflakes $base".py"
        echo "** pyflakes above, pep8 below **"
        pep8 --repeat $base".py"
    end
end
