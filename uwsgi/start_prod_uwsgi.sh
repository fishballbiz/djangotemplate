set -x -e
# use production settings when we use uwsgi
export DJANGO_SETTINGS_MODULE="app.settings.prod"
cd /app

# copy secrets
cp secrets/django_secrets.py django/app/settings

python django/manage.py migrate
python django/manage.py collectstatic --no-input
uwsgi --ini uwsgi/uwsgi.ini
set +x +e
