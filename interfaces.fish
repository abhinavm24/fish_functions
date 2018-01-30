function interfaces
    ifconfig | grep -P "(ether)|(Link|flags)|(inet\s(addr:)*\d+\.)" | grep -v "127.0.0.1"
end
