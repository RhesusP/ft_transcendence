from django import path

form . import views

urlpatterns = [
    path('', views.index, name='index'),
]