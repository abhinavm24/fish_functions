function joinjupytersession
  jupyter console --existing kernel-$argv[2].json --ssh $argv[1]
end
