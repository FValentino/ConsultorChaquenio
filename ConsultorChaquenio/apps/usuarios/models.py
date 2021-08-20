from django.db import models
from django.contrib.auth.models import AbstractUser

class Usuario (AbstractUser):
	localidad = models.CharField(max_length=50, null=True)
	dni = models.CharField(max_length=8, null=True)
	telefono = models.CharField(max_length=15, null=True)
	