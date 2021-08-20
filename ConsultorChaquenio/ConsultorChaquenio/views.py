from django.shortcuts import render
from django.contrib.auth.decorators import login_required

def Inicio(request):
	return render(request, 'index.html');
	
@login_required
def Juego(request):
	return render(request, 'juego.html');

def Login(request):
	return render(request, 'login.html');