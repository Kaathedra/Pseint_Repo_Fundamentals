Algoritmo num_a_bin
	Definir num, residuo Como Entero;
	Definir binario Como Caracter;
	Escribir "Ingresa un número entero positivo: ";
	Leer num;
	Repetir
		Escribir "Ingresa un número entero positivo: ";
		Leer num;
		Si num < 0 Entonces
			Escribir "¡Error! El número debe ser positivo.";
		FinSi
	Hasta Que num >= 0
	binario = "";
	Si num == 0 Entonces
		binario = "0";
	SiNo
		Mientras num > 0 Hacer
			residuo = num % 2;
			binario = ConvertirATexto(residuo) + binario;
			num <- trunc(num / 2);
		FinMientras
	FinSi
	Escribir "El número en binario es: " + binario;
FinAlgoritmo
