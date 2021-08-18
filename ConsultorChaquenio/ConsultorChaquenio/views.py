from django.shortcuts import render


def Inicio(request):
	return render(request, 'index.html');

def Juego(request):
	return render(request, 'juego.html');