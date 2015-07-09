function pycheck
    for name in $argv    
        pyflakes $name
        echo "** pyflakes above, pep8 below **"
        pep8 --repeat $name
    end
end
