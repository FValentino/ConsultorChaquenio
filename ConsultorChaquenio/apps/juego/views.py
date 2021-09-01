from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.http import HttpResponse

from apps.preguntas.models import Pregunta
from apps.respuestas.models import Respuesta
from .models import Funcionamiento

from apps.preguntas.configPreg import filtro, eliminacion

import random

# Create your views here.

contPreg = 0;
puntajeTotal = 0;

RespuestaCorrecta = "";
RespuestaSeleccionada = "";

@login_required
def Home (request):
	return render(request, 'juego/inicio.html')


def Juego (request):

	global contPreg;
	global RespuestaCorrecta;

	context = {};

	contPreg = contPreg + 1;

	context["nro"] = contPreg;

	pregunta = Funcionamiento.obtenerPreguntas();

	context ["pregunta"] = pregunta;

	if (contPreg==11):

		contPreg = 0;

		return render(request, 'juego/fin.html');

	else:

		pregunta = Funcionamiento.obtenerPreguntas();

		context ["pregunta"] = pregunta;

		context ["respuestas"] = Respuesta.objects.filter(pregunta_id = pregunta.pk);

		RespuestaCorrecta = Respuesta.objects.get(pregunta_id = pregunta.pk, respuesta_correcta=1);

		return render(request, 'juego/juego.html', context)
		

def respuesta_seleccionada (request):

	global RespuestaSeleccionada;
	global RespuestaCorrecta
	global puntajeTotal;

	context={};

	RespuestaSeleccionada = None;

	for i in request.POST:
		if i != "csrfmiddlewaretoken":
			RespuestaSeleccionada=i;
 
	context["RespuestaSeleccionada"] = RespuestaSeleccionada;

	if (RespuestaSeleccionada == RespuestaCorrecta.respuestas):
		context ["Mensaje"] = "¡Has respondido correctamente! ¡Sumas 1 punto!";
		puntajeTotal = puntajeTotal + 1;
	else:
		context ["Mensaje"] = "Has respondido incorrectamente.";

	return render(request, "juego/respuesta.html", context);



def Detalles(request):

	global puntajeTotal;

	context = {};

	context["puntajeTotal"] = puntajeTotal;

	puntajeTotal = 0;

	return render(request, 'juego/detalles.html', context);