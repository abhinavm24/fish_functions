function whos_using_port
 lsof -i :$argv[1]
end
