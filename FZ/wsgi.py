"""
WSGI config for FZ project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/3.2/howto/deployment/wsgi/
"""

import os

from django.core.wsgi import get_wsgi_application

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'FZ.settings')
# If so, then load the settings from production.py
# settings_module = 'FZ.settings_prod' if 'PRODUCTION' in os.environ else 'FZ.settings'
# os.environ.setdefault('DJANGO_SETTINGS_MODULE', settings_module)

application = get_wsgi_application()
