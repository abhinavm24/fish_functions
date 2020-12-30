function dockerip
 docker inspect --format "{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}" $argv
end
