set -e
echo "** Running migrations"
python manage.py migrate

echo
echo "** Starting dev server"
python manage.py runserver 0.0.0.0:8000
