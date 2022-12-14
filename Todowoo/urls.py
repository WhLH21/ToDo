"""Todowoo URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from todo import views

urlpatterns = [
    path("admin/", admin.site.urls),
    #Auth
    path("signupuser/",views.signupuser,name = "signupuser"),
    path("logoutuser/",views.logoutuser,name = "logoutuser"),
    path("login/",views.loginuser,name = "loginuser"),
    path("",views.home,name = "home"),
    #Todos
    path("current/",views.currenttodos,name = "currenttodos"),
    path("create/",views.createtodo,name = "createtodo"),
    path("completedtodos/",views.completedtodos,name = "completedtodos"),
    path("todo/<int:todo_pk>",views.viewtodo,name = "viewtodo"),
    path("todo/<int:todo_pk>/completedtodo",views.completedtodo,name = "completedtodo"),
    path("todo/<int:todo_pk>/deletetodo",views.deletetodo,name = "deletetodo"),
]
