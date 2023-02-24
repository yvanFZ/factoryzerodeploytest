"""
Django settings for FZ project.

Generated by 'django-admin startproject' using Django 3.2.14.

For more information on this file, see
https://docs.djangoproject.com/en/3.2/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/3.2/ref/settings/
"""

from pathlib import Path
import os
import environ
from django.core.exceptions import ImproperlyConfigured
from socketserver import BaseServer
from wsgiref import handlers

# Build paths inside the project like this: BASE_DIR / 'subdir'.
# BASE_DIR = Path(__file__).resolve().parent.parent
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
# BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
env = environ.Env()
environ.Env.read_env()


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/3.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
# Your secret key
def get_env_variable(var_name):
    try:
        return os.environ[var_name]
    except KeyError:
        error_msg = "set the %s environment variable" % var_name
        raise ImproperlyConfigured(error_msg)


SECRET_KEY = env('SECRET_KEY')


# SECURITY WARNING: don't run with debug turned on in production!
# DEBUG = get_env_variable('DEBUG') # Must be True in debelopement for handeling van de staticfiles

DEBUG = False
# Application definition

INSTALLED_APPS = [
   
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'rest_framework',
    'corsheaders',
    'users',
    'authentication',
    'countryinfo',
    'project',
    'mpo',
    'testrapport',
    'opleverrapport',
    'productiestatusicem'
]



CSRF_COOKIE_HTTPONLY = False
# CSRF_COOKIE_SAMESITE = 'Strict'
CSRF_COOKIE_SAMESITE=None
ALLOWED_HOSTS=['factoryzerotest.azurewebsites.net']
CORS_ORIGIN_ALLOW_ALL = True

CORS_ALLOW_CREDENTIALS = True
CORS_ORIGIN_WHITELIST = (
    'https://factoryzerotest.azurewebsites.net',
)
REST_FRAMEWORK = {
    'DEFAULT_PERMISSION_CLASSES': [
        'rest_framework.permissions.IsAuthenticated',
    ],
    'DEFAULT_AUTHENTICATION_CLASSES': [
        'rest_framework.authentication.SessionAuthentication',
        'rest_framework.authentication.BasicAuthentication',
        'rest_framework.authentication.SessionAuthentication',
    ]
}

MIDDLEWARE = [
   
    'corsheaders.middleware.CorsMiddleware',
    'django.middleware.security.SecurityMiddleware',
    "whitenoise.middleware.WhiteNoiseMiddleware",
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'FZ.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR,'build')], # voor react
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'FZ.wsgi.application'


# PROD DB
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': env('DB_NAME'), 
        'USER': env('DB_USER'),
        'PASSWORD': env('DB_PASSWORD'),
        'HOST': env('DB_HOST'), 
        'PORT': env('DB_PORT'),
        'sslmode': env('sslmode'),
    }
}

# Password validation
# https://docs.djangoproject.com/en/3.2/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/3.2/topics/i18n/

LANGUAGE_CODE = 'nl-NL'

TIME_ZONE = 'Europe/Berlin'

USE_I18N = True

USE_L10N = True

USE_TZ = False


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.2/howto/static-files/

STATIC_URL = '/static/'
STATICFILES_STORAGE = 'whitenoise.storage.CompressedStaticFilesStorage'
# STATICFILES_DIRS = [os.path.join(BASE_DIR, 'build/static/')]

# # the path for developement
STATICFILES_DIRS = [os.path.join(BASE_DIR, 'build/static/')] 

STATIC_ROOT = os.path.join(BASE_DIR, 'staticfiles')
# STATIC_ROOT = BASE_DIR / "staticfiles"

# LOGIN_REDIRECT_URL = "authentification:home"
# LOGOUT_REDIRECT_URL = "login" 
DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'
AUTH_USER_MODEL = 'users.CustomUser'

# LOGGING = {

# }
