from django.urls import path, include
from django.contrib.auth import views as auth
from . import views

app_name = "juego"

urlpatterns = [

    path('inicio/', views.Home, name='inicio'),

    path('pregunta/', views.Preguntas, name="preguntas"),

    path('respuesta/', views.Respuestas),

    path('detalles/', views.Detalles, name="detalles"),
]