function accounts
    set path "$HOME/Dropbox/repository_fusu/accounts.txt.gpg"
    echo $path
    emacsclient $path
end
