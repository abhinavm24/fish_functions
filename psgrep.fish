function psgrep
    ps -e | grep $argv | grep -v grep
end
