function upgrade
    sudo apt-fast update --yes
    sudo apt-fast full-upgrade --yes
    sudo apt-get autoremove --yes
end
