Algoritmo Aumento
	Definir sueldo, new_sueldo Como Real;
	Escribir "Ingresa tu sueldo: ";
	Leer sueldo;
	Escribir "Tu sueldo es: ", sueldo, " CLP";
	SI sueldo < 1000 Entonces
		new_sueldo <- sueldo * 1.15;
		Escribir "Y te daremos un aumento del 15%";
		Escribir "Tu nuevo sueldo es ", new_sueldo;
	FinSi
FinAlgoritmo
