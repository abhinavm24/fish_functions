function man2pdf
    for name in $argv
        man -t $name | ps2pdf - $name.pdf
    end
end
