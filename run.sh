 #!/bin/bash
python create_s3bucket.py
python manage.py makemigrations
python manage.py migrate
python manage.py createsu
python manage.py runserver
