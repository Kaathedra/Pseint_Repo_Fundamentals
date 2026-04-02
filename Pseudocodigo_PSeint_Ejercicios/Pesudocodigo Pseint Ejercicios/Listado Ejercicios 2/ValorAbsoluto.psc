Proceso ValorAbsoluto
	Definir num, static_num Como Real;
	Escribir "Ingresa un número real: ";
	Leer num;
	static_num = num;
	Si num >= 0 Entonces
		num = num;
	SiNo
		num = num * (-1);
	FinSi
	Escribir "El valor absouluto de ", static_num, " es: ", num;
FinProceso
