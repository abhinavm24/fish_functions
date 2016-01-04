function ipynb_to_rst
    for name in $argv
        jupyter nbconvert $name --to rst        
    end        
end
