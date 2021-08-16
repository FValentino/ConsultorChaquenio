from django.shortcuts import render


def Inicio(request):
	return render(request, 'index.html');

def Nosotros(request):
	return render(request, 'nosotros.html');

def Contacto(request):
	return render(request, 'contacto.html');

def Soporte(request):
	return render(request, 'soporte.html');
