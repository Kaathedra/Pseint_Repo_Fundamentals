Algoritmo Es_bisiesto
	Definir agno Como Entero;
	Definir bisiesto Como Logico;
	Repetir
		Escribir "Ingresa un año: ";
		Leer agno;
		Si agno <= 0 Entonces
			Escribir "Error! Ingresa un año valido";
		FinSi
	Hasta Que agno > 0
	bisiesto = (agno % 4 = 0 y agno % 100 <> 0) o (agno % 400 = 0);
	Si bisiesto Entonces
		Escribir "El año ", agno, " es bisiesto";
	SiNo
		Escribir "El año ", agno, " no es bisiesto";
	FinSi
FinAlgoritmo
