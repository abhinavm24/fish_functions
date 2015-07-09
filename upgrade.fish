function upgrade
    sudo apt-fast update --yes
    sudo apt-fast autoremove --yes
    sudo apt-fast upgrade --yes
    sudo apt-fast dist-upgrade --yes
    #sudo do-release-upgrade
end
