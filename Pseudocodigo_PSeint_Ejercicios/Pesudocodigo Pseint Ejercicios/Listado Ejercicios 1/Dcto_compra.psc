Algoritmo Dcto_compra
	Definir compra Como Entero
	Escribir "Ingresa el total de tu compra: "
	Leer compra
	SI compra > 50000
		compra_dcto = (compra * 90) / 100
		Escribir "Felicidades! ha obtenido un 10% de descuento en tu compra. Ahora el total es: " compra_dcto " CLP"
	SiNo
		Escribir "El total de tu compra es: " compra " CLP"
	FinSI
	
FinAlgoritmo
