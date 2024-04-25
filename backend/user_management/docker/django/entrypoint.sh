#!/bin/sh

# Wait for the database to be ready
echo "Waiting for database..."
echo "Port: $USER_MANAGEMENT_DB_PORT"
while ! nc -z user_management_db $USER_MANAGEMENT_DB_PORT; do
  sleep 0.1
done
echo "Database ready"

python manage.py flush --no-input
python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --no-input --clear
python manage.py createsuperuser --noinput

exec "gunicorn" "user_management.wsgi:application" "--bind" "0.0.0.0:8002"
