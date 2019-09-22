function joinjupytersession
  jupyter console --existing kernel-$argv[1].json --ssh $argv[2]
end
