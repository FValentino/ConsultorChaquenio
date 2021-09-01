def filtro (e, lista):

	unico = True;

	for nro in lista:
		if ((e==nro) or (e==22)):
			unico=False;
			break;

	return unico;

def eliminacion(lista):
	for i in range (len(lista)):
		lista.pop();

	return (lista);