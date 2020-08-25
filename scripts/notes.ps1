# Starting a DJANGO PROJECT
django-admin startproject mvp_landing_django .
# "." use period at the end to idicate to store in root of project folder and snake_case using uderscore

# Add app components into Django Project
python manage.py startapp "emails"

# Run Django server
python manage.py runserver

# Create superuser for django
python manage.py createsuperuser 

# Django code, adjusting the database to fit with the Django code -> to speak to each other
python manage.py migrate

# Preparin to change the Database
python manage.py makemigrations
&
python manage.py migrate
