[33mcommit e2f892b5f89072bccf6992934635e9db6afbcac1[m[33m ([m[1;36mHEAD[m[33m, [m[1;31mMASTER/main[m[33m, [m[1;32mmain[m[33m)[m
Author: Dinis <borlakov.den@mail.ru>
Date:   Thu Nov 3 02:19:25 2022 +0300

    First commit

[1mdiff --git a/Todowoo/__init__.py b/Todowoo/__init__.py[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/Todowoo/__pycache__/__init__.cpython-310.pyc b/Todowoo/__pycache__/__init__.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..3b91e64[m
Binary files /dev/null and b/Todowoo/__pycache__/__init__.cpython-310.pyc differ
[1mdiff --git a/Todowoo/__pycache__/settings.cpython-310.pyc b/Todowoo/__pycache__/settings.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..0d54d87[m
Binary files /dev/null and b/Todowoo/__pycache__/settings.cpython-310.pyc differ
[1mdiff --git a/Todowoo/__pycache__/urls.cpython-310.pyc b/Todowoo/__pycache__/urls.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..83bf5b5[m
Binary files /dev/null and b/Todowoo/__pycache__/urls.cpython-310.pyc differ
[1mdiff --git a/Todowoo/__pycache__/wsgi.cpython-310.pyc b/Todowoo/__pycache__/wsgi.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..07506f0[m
Binary files /dev/null and b/Todowoo/__pycache__/wsgi.cpython-310.pyc differ
[1mdiff --git a/Todowoo/asgi.py b/Todowoo/asgi.py[m
[1mnew file mode 100644[m
[1mindex 0000000..644e644[m
[1m--- /dev/null[m
[1m+++ b/Todowoo/asgi.py[m
[36m@@ -0,0 +1,16 @@[m
[32m+[m[32m"""[m
[32m+[m[32mASGI config for Todowoo project.[m
[32m+[m
[32m+[m[32mIt exposes the ASGI callable as a module-level variable named ``application``.[m
[32m+[m
[32m+[m[32mFor more information on this file, see[m
[32m+[m[32mhttps://docs.djangoproject.com/en/4.1/howto/deployment/asgi/[m
[32m+[m[32m"""[m
[32m+[m
[32m+[m[32mimport os[m
[32m+[m
[32m+[m[32mfrom django.core.asgi import get_asgi_application[m
[32m+[m
[32m+[m[32mos.environ.setdefault("DJANGO_SETTINGS_MODULE", "Todowoo.settings")[m
[32m+[m
[32m+[m[32mapplication = get_asgi_application()[m
[1mdiff --git a/Todowoo/settings.py b/Todowoo/settings.py[m
[1mnew file mode 100644[m
[1mindex 0000000..ee4edb0[m
[1m--- /dev/null[m
[1m+++ b/Todowoo/settings.py[m
[36m@@ -0,0 +1,118 @@[m
[32m+[m[32m"""[m
[32m+[m[32mDjango settings for Todowoo project.[m
[32m+[m
[32m+[m[32mGenerated by 'django-admin startproject' using Django 4.1.2.[m
[32m+[m
[32m+[m[32mFor more information on this file, see[m
[32m+[m[32mhttps://docs.djangoproject.com/en/4.1/topics/settings/[m
[32m+[m
[32m+[m[32mFor the full list of settings and their values, see[m
[32m+[m[32mhttps://docs.djangoproject.com/en/4.1/ref/settings/[m
[32m+[m[32m"""[m
[32m+[m
[32m+[m[32mfrom pathlib import Path[m
[32m+[m
[32m+[m[32m# Build paths inside the project like this: BASE_DIR / 'subdir'.[m
[32m+[m[32mBASE_DIR = Path(__file__).resolve().parent.parent[m
[32m+[m
[32m+[m
[32m+[m[32m# Quick-start development settings - unsuitable for production[m
[32m+[m[32m# See https://docs.djangoproject.com/en/4.1/howto/deployment/checklist/[m
[32m+[m
[32m+[m[32m# SECURITY WARNING: keep the secret key used in production secret![m
[32m+[m[32mSECRET_KEY = "django-insecure-lk6dd_g&+bt!rr4l#t_u#nn5n(nymmx3r66xsq-b5$une#h-f1"[m
[32m+[m
[32m+[m[32m# SECURITY WARNING: don't run with debug turned on in production![m
[32m+[m[32mDEBUG = True[m
[32m+[m
[32m+[m[32mALLOWED_HOSTS = [][m
[32m+[m
[32m+[m
[32m+[m[32m# Application definition[m
[32m+[m
[32m+[m[32mINSTALLED_APPS = [[m
[32m+[m[32m    "django.contrib.admin",[m
[32m+[m[32m    "django.contrib.auth",[m
[32m+[m[32m    "django.contrib.contenttypes",[m
[32m+[m[32m    "django.contrib.sessions",[m
[32m+[m[32m    "django.contrib.messages",[m
[32m+[m[32m    "django.contrib.staticfiles",[m
[32m+[m[32m    "todo",[m
[32m+[m[32m][m
[32m+[m
[32m+[m[32mMIDDLEWARE = [[m
[32m+[m[32m    "django.middleware.security.SecurityMiddleware",[m
[32m+[m[32m    "django.contrib.sessions.middleware.SessionMiddleware",[m
[32m+[m[32m    "django.middleware.common.CommonMiddleware",[m
[32m+[m[32m    "django.middleware.csrf.CsrfViewMiddleware",[m
[32m+[m[32m    "django.contrib.auth.middleware.AuthenticationMiddleware",[m
[32m+[m[32m    "django.contrib.messages.middleware.MessageMiddleware",[m
[32m+[m[32m    "django.middleware.clickjacking.XFrameOptionsMiddleware",[m
[32m+[m[32m][m
[32m+[m
[32m+[m[32mROOT_URLCONF = "Todowoo.urls"[m
[32m+[m
[32m+[m[32mTEMPLATES = [[m
[32m+[m[32m    {[m
[32m+[m[32m        "BACKEND": "django.template.backends.django.DjangoTemplates",[m
[32m+[m[32m        "DIRS": [],[m
[32m+[m[32m        "APP_DIRS": True,[m
[32m+[m[32m        "OPTIONS": {[m
[32m+[m[32m            "context_processors": [[m
[32m+[m[32m                "django.template.context_processors.debug",[m
[32m+[m[32m                "django.template.context_processors.request",[m
[32m+[m[32m                "django.contrib.auth.context_processors.auth",[m
[32m+[m[32m                "django.contrib.messages.context_processors.messages",[m
[32m+[m[32m            ],[m
[32m+[m[32m        },[m
[32m+[m[32m    },[m
[32m+[m[32m][m
[32m+[m
[32m+[m[32mWSGI_APPLICATION = "Todowoo.wsgi.application"[m
[32m+[m
[32m+[m
[32m+[m[32m# Database[m
[32m+[m[32m# https://docs.djangoproject.com/en/4.1/ref/settings/#databases[m
[32m+[m
[32m+[m[32mDATABASES = {[m
[32m+[m[32m    "default": {[m
[32m+[m[32m        "ENGINE": "django.db.backends.sqlite3",[m
[32m+[m[32m        "NAME": BASE_DIR / "db.sqlite3",[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m
[32m+[m[32m# Password validation[m
[32m+[m[32m# https://docs.djangoproject.com/en/4.1/ref/settings/#auth-password-validators[m
[32m+[m
[32m+[m[32mAUTH_PASSWORD_VALIDATORS = [[m
[32m+[m[32m    {[m
[32m+[m[32m        "NAME": "django.contrib.auth.password_validation.UserAttributeSimilarityValidator",[m
[32m+[m[32m    },[m
[32m+[m[32m    {"NAME": "django.contrib.auth.password_validation.MinimumLengthValidator",},[m
[32m+[m[32m    {"NAME": "django.contrib.auth.password_validation.CommonPasswordValidator",},[m
[32m+[m[32m    {"NAME": "django.contrib.auth.password_validation.NumericPasswordValidator",},[m
[32m+[m[32m][m
[32m+[m
[32m+[m
[32m+[m[32m# Internationalization[m
[32m+[m[32m# https://docs.djangoproject.com/en/4.1/topics/i18n/[m
[32m+[m
[32m+[m[32mLANGUAGE_CODE = "en-us"[m
[32m+[m
[32m+[m[32mTIME_ZONE = "UTC"[m
[32m+[m
[32m+[m[32mUSE_I18N = True[m
[32m+[m
[32m+[m[32mUSE_TZ = True[m
[32m+[m
[32m+[m
[32m+[m[32m# Static files (CSS, JavaScript, Images)[m
[32m+[m[32m# https://docs.djangoproject.com/en/4.1/howto/static-files/[m
[32m+[m
[32m+[m[32mSTATIC_URL = "static/"[m
[32m+[m
[32m+[m[32m# Default primary key field type[m
[32m+[m[32m# https://docs.djangoproject.com/en/4.1/ref/settings/#default-auto-field[m
[32m+[m
[32m+[m[32mDEFAULT_AUTO_FIELD = "django.db.models.BigAutoField"[m
[1mdiff --git a/Todowoo/urls.py b/Todowoo/urls.py[m
[1mnew file mode 100644[m
[1mindex 0000000..6ee727d[m
[1m--- /dev/null[m
[1m+++ b/Todowoo/urls.py[m
[36m@@ -0,0 +1,27 @@[m
[32m+[m[32m"""Todowoo URL Configuration[m
[32m+[m
[32m+[m[32mThe `urlpatterns` list routes URLs to views. For more information please see:[m
[32m+[m[32m    https://docs.djangoproject.com/en/4.1/topics/http/urls/[m
[32m+[m[32mExamples:[m
[32m+[m[32mFunction views[m
[32m+[m[32m    1. Add an import:  from my_app import views[m
[32m+[m[32m    2. Add a URL to urlpatterns:  path('', views.home, name='home')[m
[32m+[m[32mClass-based views[m
[32m+[m[32m    1. Add an import:  from other_app.views import Home[m
[32m+[m[32m    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')[m
[32m+[m[32mIncluding another URLconf[m
[32m+[m[32m    1. Import the include() function: from django.urls import include, path[m
[32m+[m[32m    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))[m
[32m+[m[32m"""[m
[32m+[m[32mfrom django.contrib import admin[m
[32m+[m[32mfrom django.urls import path[m
[32m+[m[32mfrom todo import views[m
[32m+[m
[32m+[m[32murlpatterns = [[m
[32m+[m[32m    path("admin/", admin.site.urls),[m
[32m+[m
[32m+[m[32m    #Auth[m
[32m+[m[32m    path("signupuser/",views.signupuser,name = "signupuser"),[m
[32m+[m[32m    #Todos[m
[32m+[m[32m    path("current/",views.currenttodos,name = "currenttodos"),[m
[32m+[m[32m][m
[1mdiff --git a/Todowoo/wsgi.py b/Todowoo/wsgi.py[m
[1mnew file mode 100644[m
[1mindex 0000000..f8af0b3[m
[1m--- /dev/null[m
[1m+++ b/Todowoo/wsgi.py[m
[36m@@ -0,0 +1,16 @@[m
[32m+[m[32m"""[m
[32m+[m[32mWSGI config for Todowoo project.[m
[32m+[m
[32m+[m[32mIt exposes the WSGI callable as a module-level variable named ``application``.[m
[32m+[m
[32m+[m[32mFor more information on this file, see[m
[32m+[m[32mhttps://docs.djangoproject.com/en/4.1/howto/deployment/wsgi/[m
[32m+[m[32m"""[m
[32m+[m
[32m+[m[32mimport os[m
[32m+[m
[32m+[m[32mfrom django.core.wsgi import get_wsgi_application[m
[32m+[m
[32m+[m[32mos.environ.setdefault("DJANGO_SETTINGS_MODULE", "Todowoo.settings")[m
[32m+[m
[32m+[m[32mapplication = get_wsgi_application()[m
[1mdiff --git a/db.sqlite3 b/db.sqlite3[m
[1mnew file mode 100644[m
[1mindex 0000000..28f7051[m
Binary files /dev/null and b/db.sqlite3 differ
[1mdiff --git a/manage.py b/manage.py[m
[1mnew file mode 100644[m
[1mindex 0000000..ea9dd9f[m
[1m--- /dev/null[m
[1m+++ b/manage.py[m
[36m@@ -0,0 +1,22 @@[m
[32m+[m[32m#!/usr/bin/env python[m
[32m+[m[32m"""Django's command-line utility for administrative tasks."""[m
[32m+[m[32mimport os[m
[32m+[m[32mimport sys[m
[32m+[m
[32m+[m
[32m+[m[32mdef main():[m
[32m+[m[32m    """Run administrative tasks."""[m
[32m+[m[32m    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "Todowoo.settings")[m
[32m+[m[32m    try:[m
[32m+[m[32m        from django.core.management import execute_from_command_line[m
[32m+[m[32m    except ImportError as exc:[m
[32m+[m[32m        raise ImportError([m
[32m+[m[32m            "Couldn't import Django. Are you sure it's installed and "[m
[32m+[m[32m            "available on your PYTHONPATH environment variable? Did you "[m
[32m+[m[32m            "forget to activate a virtual environment?"[m
[32m+[m[32m        ) from exc[m
[32m+[m[32m    execute_from_command_line(sys.argv)[m
[32m+[m
[32m+[m
[32m+[m[32mif __name__ == "__main__":[m
[32m+[m[32m    main()[m
[1mdiff --git a/todo/__init__.py b/todo/__init__.py[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/todo/__pycache__/__init__.cpython-310.pyc b/todo/__pycache__/__init__.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..fc9b303[m
Binary files /dev/null and b/todo/__pycache__/__init__.cpython-310.pyc differ
[1mdiff --git a/todo/__pycache__/admin.cpython-310.pyc b/todo/__pycache__/admin.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..6a88fe0[m
Binary files /dev/null and b/todo/__pycache__/admin.cpython-310.pyc differ
[1mdiff --git a/todo/__pycache__/apps.cpython-310.pyc b/todo/__pycache__/apps.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..8317a76[m
Binary files /dev/null and b/todo/__pycache__/apps.cpython-310.pyc differ
[1mdiff --git a/todo/__pycache__/models.cpython-310.pyc b/todo/__pycache__/models.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..525e4d6[m
Binary files /dev/null and b/todo/__pycache__/models.cpython-310.pyc differ
[1mdiff --git a/todo/__pycache__/views.cpython-310.pyc b/todo/__pycache__/views.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..66efade[m
Binary files /dev/null and b/todo/__pycache__/views.cpython-310.pyc differ
[1mdiff --git a/todo/admin.py b/todo/admin.py[m
[1mnew file mode 100644[m
[1mindex 0000000..8c38f3f[m
[1m--- /dev/null[m
[1m+++ b/todo/admin.py[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32mfrom django.contrib import admin[m
[32m+[m
[32m+[m[32m# Register your models here.[m
[1mdiff --git a/todo/apps.py b/todo/apps.py[m
[1mnew file mode 100644[m
[1mindex 0000000..c6fe8a1[m
[1m--- /dev/null[m
[1m+++ b/todo/apps.py[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32mfrom django.apps import AppConfig[m
[32m+[m
[32m+[m
[32m+[m[32mclass TodoConfig(AppConfig):[m
[32m+[m[32m    default_auto_field = "django.db.models.BigAutoField"[m
[32m+[m[32m    name = "todo"[m
[1mdiff --git a/todo/migrations/__init__.py b/todo/migrations/__init__.py[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/todo/migrations/__pycache__/__init__.cpython-310.pyc b/todo/migrations/__pycache__/__init__.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..afe6865[m
Binary files /dev/null and b/todo/migrations/__pycache__/__init__.cpython-310.pyc differ
[1mdiff --git a/todo/models.py b/todo/models.py[m
[1mnew file mode 100644[m
[1mindex 0000000..71a8362[m
[1m--- /dev/null[m
[1m+++ b/todo/models.py[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32mfrom django.db import models[m
[32m+[m
[32m+[m[32m# Create your models here.[m
[1mdiff --git a/todo/templates/todo/base.html b/todo/templates/todo/base.html[m
[1mnew file mode 100644[m
[1mindex 0000000..70f875e[m
[1m--- /dev/null[m
[1m+++ b/todo/templates/todo/base.html[m
[36m@@ -0,0 +1,22 @@[m
[32m+[m
[32m+[m[32m{% if user.is_authenticated %}[m
[32m+[m
[32m+[m[32mLoggen as an {{ user.username }}[m
[32m+[m
[32m+[m[32m<a href="#">Log out </a>[m
[32m+[m
[32m+[m[32m{% else %}[m
[32m+[m
[32m+[m[32m<a href="#">Sign up</a>[m
[32m+[m[32m<a href="#">Log in</a>[m
[32m+[m
[32m+[m[32m{% endif %}[m
[32m+[m
[32m+[m[32m<br>[m
[32m+[m[32m<br>[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m[32m{% block content %}{% endblock %}[m
[1mdiff --git a/todo/templates/todo/currenttodos.html b/todo/templates/todo/currenttodos.html[m
[1mnew file mode 100644[m
[1mindex 0000000..d6cd025[m
[1m--- /dev/null[m
[1m+++ b/todo/templates/todo/currenttodos.html[m
[36m@@ -0,0 +1,7 @@[m
[32m+[m[32m{% extends 'todo\base.html' %}[m
[32m+[m
[32m+[m[32m{% block content %}[m
[32m+[m
[32m+[m[32mCurrent[m
[32m+[m
[32m+[m[32m{% endblock %}[m
[1mdiff --git a/todo/templates/todo/signupuser.html b/todo/templates/todo/signupuser.html[m
[1mnew file mode 100644[m
[1mindex 0000000..a963389[m
[1m--- /dev/null[m
[1m+++ b/todo/templates/todo/signupuser.html[m
[36m@@ -0,0 +1,17 @@[m
[32m+[m[32m{% extends 'todo\base.html' %}[m
[32m+[m
[32m+[m[32m{% block content %}[m
[32m+[m[32m<h1>Please Sign up!</h1>[m
[32m+[m
[32m+[m[32m<h2>{{ error }}</h2>[m
[32m+[m
[32m+[m[32m<form method="POST">[m
[32m+[m[32m  {% csrf_token %}[m
[32m+[m
[32m+[m[32m{{ form.as_p }}[m
[32m+[m
[32m+[m[32m<button type="sumbit">Sign up</button>[m
[32m+[m
[32m+[m[32m</form>[m
[32m+[m
[32m+[m[32m{% endblock %}[m
[1mdiff --git a/todo/tests.py b/todo/tests.py[m
[1mnew file mode 100644[m
[1mindex 0000000..7ce503c[m
[1m--- /dev/null[m
[1m+++ b/todo/tests.py[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32mfrom django.test import TestCase[m
[32m+[m
[32m+[m[32m# Create your tests here.[m
[1mdiff --git a/todo/views.py b/todo/views.py[m
[1mnew file mode 100644[m
[1mindex 0000000..246c694[m
[1m--- /dev/null[m
[1m+++ b/todo/views.py[m
[36m@@ -0,0 +1,26 @@[m
[32m+[m[32mfrom django.shortcuts import render, redirect[m
[32m+[m[32mfrom django.contrib.auth.forms import UserCreationForm[m
[32m+[m[32mfrom django.contrib.auth.models import User[m
[32m+[m[32mfrom django.db import IntegrityError[m
[32m+[m[32mfrom django.contrib.auth import login[m
[32m+[m
[32m+[m
[32m+[m[32mdef signupuser(request):[m
[32m+[m[32m    if request.method == "GET":[m
[32m+[m[32m        return render(request,"todo\signupuser.html",{'form':UserCreationForm()})[m
[32m+[m[32m    else:[m
[32m+[m[32m        if request.POST['password1'] == request.POST['password2']:[m
[32m+[m[32m            try:[m
[32m+[m[32m                user = User.objects.create_user(request.POST['username'],password=request.POST['password1'])[m
[32m+[m[32m                user.save()[m
[32m+[m[32m                login(request,user)[m
[32m+[m[32m                return redirect("currenttodos")[m
[32m+[m[32m            except IntegrityError:[m
[32m+[m[32m                return render(request,"todo\signupuser.html",{'form':UserCreationForm(),'error':'This username already exist. Please choose another username.'})[m
[32m+[m
[32m+[m[32m        else:[m
[32m+[m[32m            return render(request,"todo\signupuser.html",{'form':UserCreationForm(),'error':'Passwords didnt match!'})[m
[32m+[m
[32m+[m
[32m+[m[32mdef currenttodos(request):[m
[32m+[m[32m    return render(request,"todo\currenttodos.html")[m
