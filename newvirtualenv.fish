function newvirtualenv
 set name $argv[1]
 cd ~/.virtualenvs
 python3 -m venv $name
 activate $name
 pip install wheel
 pip install virtualfish
end
