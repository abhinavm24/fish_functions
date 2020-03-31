function generate_password
head /dev/urandom | tr -dc 'A-Za-z0-9%*_-=:/?' | head -c 30 && echo
end
