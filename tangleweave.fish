function tangleweave
    for name in $argv
        echo
        echo "Tangling and weaving: "$name
        echo 
        Ptangle $name
        Pweave $name
    end
end
