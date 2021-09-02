from django.db import models
from django.contrib.auth.models import AbstractUser

class Usuario (AbstractUser):
	localidad = models.CharField(max_length=50, null=True);	

	puntaje_total = models.DecimalField(verbose_name="puntaje_total", default=0, decimal_places=2, max_digits=2);

	def actualizacionPuntaje(self, puntaje):
		self.puntaje_total = puntaje;

		self.save();