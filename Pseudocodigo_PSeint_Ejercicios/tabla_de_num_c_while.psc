Algoritmo tabla_de_num
	Definir num Como Entero
	Escribir "Por favor, ingresa un numero: "
	Leer num
	mult <- 1
	Escribir "La tabla de ", num," es:"
	Mientras mult <= 10 Hacer
		Escribir num "x" mult " = " num * mult 
		mult <- mult + 1
	FinMientras
FinAlgoritmo
