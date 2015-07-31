function productiondb
  mysql --host balance-db-vip.ksjc.sh.colo --port 8000 --user readonly -p inclick -preadonly
end
