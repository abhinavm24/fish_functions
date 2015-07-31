function setupadwebscripts
    set --global --export PYTHONPATH "$HOME/ad-web/code"
    set --global --export SH_ENV "ads"
    cd $HOME/ad-web
    workon adweb
end
