function venv
  set ENVIRONMENT_NAME $argv[1]
  python3 -m venv $ENVIRONMENT_NAME
  vf activate $ENVIRONMENT_NAME
  pip install wheel --upgrade
  pip install pip --upgrade
end
