function utf-16-to-8
  iconv -f UTF-16LE -t UTF-8 $argv[1] -o $argv[2]
end
