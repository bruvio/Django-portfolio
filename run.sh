 #!/bin/bash

# read -sp 'AWS_ACCESS_KEY_ID: ' key_id
# echo
# read -sp 'AWS_SECRET_ACCESS_KEY: ' access_key
# echo
python create_s3.py

# read -p 'AWS_S3_REGION_NAME: ' region
# echo
# export AWS_ACCESS_KEY_ID=${key_id}
# export AWS_SECRET_ACCESS_KEY=${access_key}
# export AWS_STORAGE_BUCKET_NAME=${bucketname}
# export AWS_S3_REGION_NAME=${region}

python manage.py makemigrations
python manage.py migrate
python manage.py createsu
python manage.py runserver

# aws rds create-db-instance \
# --db-instance-identifier portfolio \
# --db-instance-class db.t3.micro \
# --engine postgres \
# --master-username postgres \
# --master-user-password lorokpopen \
# --allocated-storage 5


# aws rds describe-db-instances --db-instance-identifier portfolio


# aws rds delete-db-instance \
# --db-instance-identifier portfolio \
# --skip-final-snapshot

#  eb init -p python-3.8 django-portfolio

#  eb create django-env

#  eb status
