 #!/bin/bash
aws rds create-db-instance \
--db-instance-identifier portfolio \
--db-instance-class db.t3.micro \
--engine postgres \
--master-username postgres \
--master-user-password lorokpopen \
--allocated-storage 5


aws rds describe-db-instances --db-instance-identifier portfolio
