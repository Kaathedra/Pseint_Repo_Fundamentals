Algoritmo expresion_matematica
	Definir p, q Como Entero;
	Escribir "Ingresa 2 números, veamos si cumplen la expresion: ";
	Leer p, q;
	Si p^2 + q^2 - 2 * p^2 < 680  Entonces
		Escribir p, " y ", q, " satisface la expresion";
	SiNo
		Escribir p, " y ", q, " no satisface la expresion";
	FinSi
	
FinAlgoritmo
