from django.db import models
from django.http import HttpResponse

from apps.preguntas.models import Pregunta

import random

# Create your models here.

excluidas = [];

class Funcionamiento(models.Model):

	def obtenerPreguntas():

		global excluidas;

		i=0;

		if (len(excluidas) == 0):

			pregunta = random.choice(Pregunta.objects.all());
			
		else:

			pregunta = random.choice(Pregunta.objects.exclude(pk__in = excluidas));

			for i in range (len(excluidas)):
				if (pregunta.pk == excluidas[i]):
					pregunta = random.choice(Pregunta.objects.exclude(pk__in = excluidas));
					i=0;
				else:
					break;

		excluidas.append(pregunta.pk);

		if (len(excluidas)>9):

			for i in range (len(excluidas)):
					excluidas.pop();

		return (pregunta);