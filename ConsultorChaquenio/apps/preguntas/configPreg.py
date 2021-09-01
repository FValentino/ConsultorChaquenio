def filtro (e, lista):

	unico = True;

	for nro in lista:
		if ((e==nro) or (e==22)):
			unico=False;
			break;

	return unico;