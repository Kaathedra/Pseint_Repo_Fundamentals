Proceso DiaSemana
	Definir num Como Entero;
	Definir semana Como Caracter;
	Repetir
		Escribir "Ingresa un número, veamos a que día de la semana corresponde: ";
		Leer num;
	Hasta Que num >= 1 y num < 8
	Dimensionar semana[8];
	semana[1] = "Lunes";
	semana[2] = "Martes";
	semana[3] = "Miercoles";
	semana[4] = "Jueves";
	semana[5] = "Viernes";
	semana[6] = "Sábado";
	semana[7] = "Domingo";
	Escribir "Tu número corresponde al día: ", semana[num];
FinProceso
