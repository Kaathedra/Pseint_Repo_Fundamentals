Proceso VerificarMultiplo
	Definir num1, num2 Como Entero;
	Escribir "Ingresa un número entero: ";
	Leer num1;
	Escribir Sin Saltar "Ingresa un segundo número: ";
	Leer num2;
	SI num2 == 0 Entonces
		Escribir "Error: No se puede dividir por cero.";
	SiNo
		
		Si num1 % num2 = 0 Entonces
			Escribir num1, " es multiplo de ", num2;
		SiNo
			Escribir num1, " no es multiplo de ", num2;
		FinSi
	FinSi
FinProceso