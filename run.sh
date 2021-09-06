 #!/bin/bash

# echo "setup AWS enviromental variables "
# echo
# read -sp 'AWS_ACCESS_KEY_ID: ' key_id
# echo
# read -sp 'AWS_SECRET_ACCESS_KEY: ' access_key
# echo
# read -p 'AWS_STORAGE_BUCKET_NAME: ' bucketname
# echo
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
#     --db-instance-identifier portfolio \
#     --db-instance-class db.t3.micro \
#     --engine postgres \
#     --master-username admin \
#     --master-user-password secret99 \
#     --allocated-storage 5


#  eb init -p python-3.8 django-portfolio

#  eb create django-env

#  eb status
