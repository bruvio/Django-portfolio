 #!/bin/bash

python create_s3bucket.py

eb init
eb create portfolio -db.engine postgres --database.version 12
