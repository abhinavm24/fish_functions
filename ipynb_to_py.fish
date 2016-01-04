function ipynb_to_py
    for name in $argv
        jupyter nbconvert $name --to python
    end        
end
