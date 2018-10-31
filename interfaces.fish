function interfaces
    ip address | grep -P --only-matching "(\d: \w+)|(state \w+)|(link/\w+ [a-f0-9:]+)|(inet [0-9.]+)"
end
