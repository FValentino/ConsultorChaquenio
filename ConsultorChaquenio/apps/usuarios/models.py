from django.db import models
from django.contrib.auth.models import AbstractUser
from decimal import *

class Usuario (AbstractUser):
	localidad = models.CharField(max_length=50, null=True);	

	puntaje_total = models.CharField(max_length=3, null=True);

	#puntaje_total = models.DecimalField(verbose_name="puntaje_total", default=0, decimal_places=4, max_digits=6);
