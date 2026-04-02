Proceso calculadora_basic
	Definir num1, num2, operacion Como Real;
	Definir operador Como Entero;
	Escribir "Ingresa un número: ";
	Leer num1;
	Escribir Sin Saltar "Escribe otro número: ";
	Leer num2;
	Escribir "1.- Suma";
	Escribir "2.- Resta";
	Escribir "3.- Multiplicación";
	Escribir "4.- Dividir";
	Escribir "Qué quieres hacer con estos números?(1, 2, 3 o 4): ";
	Leer operador;
	Dimensionar operacion[5];
	operacion[1] = (num1 + num2);
	operacion[2] = (num1 - num2);
	operacion[3] = (num1 * num2);
	operacion[4] = (num1 / num2);
	Escribir "El resultado de tu operacion es: ", operacion[operador];
FinProceso