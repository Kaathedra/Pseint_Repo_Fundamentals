Algoritmo Menor_a_Mayor
	Escribir "Ingrese 3 numeros: "
	Leer a, b, c
	Si a > b Entonces
		temp <- a
		a <- b
		b <- temp
	FinSi
	Si b > c Entonces
		temp <- b
		b <- c
		c <- temp
	FinSi
	Si a > b Entonces
		temp <- a
		a <- b
		b <- temp
	FinSi
	Escribir "El orden de menor a mayor es: ", a, " ", b " ", c
FinAlgoritmo
