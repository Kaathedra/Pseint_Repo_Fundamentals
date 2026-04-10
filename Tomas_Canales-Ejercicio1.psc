Algoritmo stock_for_delivery
	Definir cant_dispo, cant_req Como Entero;
	Escribir "Ingrese la cantidad de producto solicitado: ";
	Leer cant_req;
	Escribir "Ingrese la cantidad disponible del producto: ";
	Leer cant_dispo;
	Si cant_req == cant_dispo Entonces
		Escribir "Despacho exacto.";
	SiNo
		Si cant_req < cant_dispo Entonces
			Escribir "Despacho parcial con stock restante.";
		SiNo
			Escribir "Stock insuficiente.";
		FinSi
	FinSi
	Escribir "Fin del proceso.";
FinAlgoritmo
