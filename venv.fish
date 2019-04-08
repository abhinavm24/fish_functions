function venv
  set CURRENT_DIRECTORY (pwd)
  set ENVIRONMENT_NAME $argv[1]

  cd $HOME/.virtualenvs
  python3 -m venv $ENVIRONMENT_NAME
  vf activate $ENVIRONMENT_NAME
  pip install wheel --upgrade
  pip install pip --upgrade
  cd $CURRENT_DIRECTORY
end
