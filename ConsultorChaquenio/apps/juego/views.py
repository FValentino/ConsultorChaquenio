from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.http import HttpResponse

from apps.preguntas.models import Pregunta
from apps.respuestas.models import Respuesta

from apps.preguntas.configPreg import filtro

import random

# Create your views here.

preguntas_Nros = [];

respondido = [];

@login_required
def Home (request):
	return render(request, 'juego/inicio.html')






def Preguntas (request):
	context = {};
	preguntas='';

	e = random.randint(1,32);

	preguntas_Nros.append( filtro(e, preguntas_Nros) );


	if (len(preguntas_Nros)<11):
		context['preguntas'] = Pregunta.objects.get(id=e);
		context['respuestas'] = Respuesta.objects.filter(pregunta_id=e);

		return render(request, 'juego/pregunta.html', context);
		
	else:

		#eliminacion(preguntas_Nros);
		return render(request, 'juego/fin.html');

def Respuestas (request):

	context={};

	rpta = request.GET["resp"];

	context["RespuestaSeleccionada"] = rpta;

	return render(request, "juego/respuesta.html", context);



def Detalles(request):

	return render(request, 'juego/detalles.html');