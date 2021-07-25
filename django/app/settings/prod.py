from app.settings import django_secrets
from app.settings.default import *  # noqa
import os


DEBUG = False
DEBUG_TOOLBAR_CONFIG = {}  # disable debug toolbar

SECRET_KEY = django_secrets.SECRET_KEY

DATABASES = {
  'default': {
    'ENGINE': 'django.db.backends.postgresql_psycopg2',
    'NAME': os.environ['POSTGRES_DB'],
    'USER': os.environ['POSTGRES_USER'],
    'PASSWORD': os.environ['POSTGRES_PASSWORD'],
    'HOST': 'postgres',
    'PORT': '5432',
  }
}
