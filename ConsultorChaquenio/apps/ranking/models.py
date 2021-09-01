from django.db import models
from apps.usuarios.models import Usuario


# Create your models here.

class Ranking (models.Model):
	id_usuario = models.ForeignKey(Usuario, on_delete=models.CASCADE);

	fecha = models.DateTimeField(auto_now=False, auto_now_add=False);

	puntaje_total = models.DecimalField(verbose_name = "PuntajeObtenido", default=0, decimal_places=2, max_digits=2);