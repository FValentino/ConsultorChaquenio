from django.db import models
from django.http import HttpResponse

from apps.preguntas.models import Pregunta
from apps.usuarios.models import Usuario

import random

# Create your models here.

excluidas = [];

class Funcionamiento(models.Model):

	def obtenerPreguntas():

		global excluidas;

		pregunta = random.choice(Pregunta.objects.all());
			
		if ( len(excluidas)>0 ):

			pregunta = random.choice(Pregunta.objects.all());

			for i in range (len(excluidas)):
				if (pregunta.id == excluidas[i]):
					pregunta = random.choice(Pregunta.objects.all());
					i=0;

		excluidas.append(pregunta.id);

		if (len(excluidas)>9):

			for i in range (len(excluidas)):
					excluidas.pop();

		return (pregunta);
