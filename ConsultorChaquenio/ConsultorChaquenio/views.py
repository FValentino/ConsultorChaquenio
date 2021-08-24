from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from .forms import RegistroFormulario

def Inicio(request):
	return render(request, 'index.html');
	
@login_required
def Juego(request):
	return render(request, 'juego.html');

def Login(request):
	return render(request, 'usuarios/login.html');

def Registro(request):
	if request.method == 'POST':
		form = RegistroFormulario(request.POST)
		if form.is_valid():
			form.save()
			return redirect('')
	else:
		form = RegistroFormulario()

	return render(request, 'usuarios/registro.html');