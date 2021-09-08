 #!/bin/bash
python create_s3bucket.py
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
