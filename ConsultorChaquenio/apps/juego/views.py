from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.http import HttpResponse

from apps.usuarios.models import Usuario
from apps.preguntas.models import Pregunta
from apps.respuestas.models import Respuesta
from apps.categorias.models import Categoria

from .models import Funcionamiento

import random

# Create your views here.

contPreg = 0;
puntajeTotal = 0;
puntajeRanking = 0;

RespuestaCorrecta = "";
RespuestaSeleccionada = "";

@login_required
def Home (request):

	return render(request, 'juego/inicio.html')


def Juego (request):

	global contPreg;
	global RespuestaCorrecta;
	global puntajeTotal;

	context = {};

	contPreg = contPreg + 1;

	pregunta = Funcionamiento.obtenerPreguntas();

	categoria = pregunta.categoria;

	context ["numero"] = contPreg;
	context ["pregunta"] = pregunta;
	context ["categoria"] = categoria;

	if (contPreg==11):

		contPreg = 0;

		usuario = Usuario.objects.get(username = request.user);

		usuario.puntaje_total=puntajeTotal;

		usuario.save();

		return render(request, 'juego/fin.html');

	else:

		pregunta = Funcionamiento.obtenerPreguntas();

		context ["pregunta"] = pregunta;

		context ["respuestas"] = Respuesta.objects.filter(pregunta_id = pregunta.pk);

		RespuestaCorrecta = Respuesta.objects.get(pregunta_id = pregunta.pk, respuesta_correcta=1);

		return render(request, 'juego/juego.html', context)
		

def Respuesta_Seleccionada (request):

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

		puntajeTotal += 1;

	else:
		context ["Mensaje"] = "Has respondido incorrectamente.";

	return render(request, "juego/respuesta.html", context);



def Detalles(request):

	global puntajeRanking;

	global puntajeTotal;

	context = {};

	context["puntajeTotal"] = puntajeTotal;

	

	return render(request, 'juego/detalles.html', context);


def Tabla(request):

	context = {};

	mostrar_usuarios = Usuarios.objects.order_by('puntaje_total')[:10];

	contador = mostrar_usuarios.count();

	context = {

		"usuario": mostrar_usuarios,
		"cantidad": contador

	}

	return render(request,"juego/ranking.html",context );
