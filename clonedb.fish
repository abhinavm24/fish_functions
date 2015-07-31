function clonedb --description "Clone one db-dev-100 database to another"
   if [ (count $argv) -ne 2 ]
      echo "Usage: clonedb <source database> <target database>"
      return 1
   end
   mysqldump --host db-dev-100 --port 3310 --user root $argv[1] | mysql --host db-dev-100 --port 3310 --user root $argv[2]
end
