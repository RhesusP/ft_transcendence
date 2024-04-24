#!/bin/sh

# Wait for the database to be ready
echo "Waiting for database..."
echo "Port: $MATCHS_DB_PORT"
while ! nc -z matchs_db $MATCHS_DB_PORT; do
  sleep 0.1
done
echo "Database ready"

#python manage.py flush --no-input
python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --no-input --clear

exec "gunicorn" "user_stats.wsgi:application" "--bind" "0.0.0.0:8003"