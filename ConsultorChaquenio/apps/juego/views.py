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

totalPreguntas = [];
totalRespuestasCorrectas = [];
totalRespuestasSeleccionadas = [];

RespuestaCorrecta = "";
RespuestaSeleccionada = "";

@login_required
def Home (request):
	return render(request, 'juego/inicio.html')


def Juego (request):

	global contPreg;
	global totalPreguntas;
	global RespuestaCorrecta;
	global totalRespuestasCorrectas;

	context = {};

	contPreg = contPreg + 1;

	pregunta = Funcionamiento.obtenerPreguntas();

	context ["pregunta"] = pregunta;

	if (contPreg==11):

		return render(request, 'juego/fin.html');

	else:

		pregunta = Funcionamiento.obtenerPreguntas();

		context ["pregunta"] = pregunta;

		context ["respuestas"] = Respuesta.objects.filter(pregunta_id = pregunta.pk);

		RespuestaCorrecta = Respuesta.objects.get(pregunta_id = pregunta.pk, respuesta_correcta=1);

		totalPreguntas.append(pregunta);

		totalRespuestasCorrectas.append(RespuestaCorrecta);

		print (RespuestaCorrecta);

		return render(request, 'juego/juego.html', context)
		

def respuesta_seleccionada (request):

	global totalRespuestas;
	global RespuestaSeleccionada;
	global RespuestaCorrecta
	global puntajeTotal;
	global totalRespuestasSeleccionadas;

	context={};

	RespuestasSeleccionada = request.GET["resp"];

	context["RespuestaSeleccionada"] = RespuestaSeleccionada;

	if (RespuestaSeleccionada == RespuestaCorrecta.respuestas):
		context ["Mensaje"] = "RESPONDIO CORRECTAMENTE";
		puntajeTotal = puntajeTotal + 1;
	else:
		context ["Mensaje"] = "RESPONDIO INCORRECTAMENTE";

	totalRespuestasSeleccionadas.append(RespuestaSeleccionada);


	return render(request, "juego/respuesta.html", context);



def Detalles(request):

	global totalRespuestas;
	global totalRespuestasSeleccionadas;
	global totalRespuestasCorrectas;

	global puntajeTotal;

	context = {};

	context["preguntas"] = totalPreguntas;
	context["respuestasSeleccionadas"] = totalRespuestasSeleccionadas;
	context["respuestasCorrectas"] = totalRespuestasCorrectas;
	context["puntaje"] = puntajeTotal;

	return render(request, 'juego/detalles.html', context);