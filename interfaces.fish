function interfaces
    ifconfig | grep -P "inet\s(addr:)*\d\d\d\." | grep -v "127.0.0.1"
end
