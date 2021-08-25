from django.db import models
from apps.usuarios.models import Usuario
# Create your models here.

class Juego(models.Model):
	id_usuario = models.ForeignKey(Usuario,on_delete=models.CASCADE)
	puntaje = models.DecimalField(default=0, decimal_places=2, max_digits=10)

	def __str__(self):
		return self.puntaje