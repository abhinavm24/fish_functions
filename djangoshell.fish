function djangoshell
    set which_python $PYTHON 'ptipython'
    python manage.py shell_plus --$which_python
end
