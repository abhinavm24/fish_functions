function tping
  if [ (count $argv) -gt 1 ]
     set INTERVAL $argv[1]
     set ADDRESS $argv[2]
  else
      set INTERVAL 1
      set ADDRESS $argv[1]
  end
  ping -i $INTERVAL $ADDRESS | awk '/^[0-9]+ bytes from / { "date" | getline pong; close("date"); print pong":",$0; }'
end
