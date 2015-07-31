function datawarehouse
    set -x PGPASSWORD Employerreadonly123
    psql --port 5439 --host reports-redshift-r.ksjc.sh.colo --username employer_readonly --dbname data_warehouse    
end
