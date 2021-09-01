from .models import Pregunta

import random

def obtener_preguntas():

	preguntas = [];

	preguntas = Pregunta.objects.all();

	return preguntas;

