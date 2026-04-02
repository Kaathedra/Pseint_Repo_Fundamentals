Proceso grupoEtareo
	Definir edad Como Entero;
		Repetir 
			Escribir "Ingresa tu edad: ";
			Leer edad;
			SI edad = 0 Entonces
				Escribir "¿Acaso eres un bebé usando un computador?";
			FinSi
		Hasta Que edad >= 1;
		SI edad >= 1 y edad <= 12 Entonces
			Escribir "Según tu edad, eres un niño/a.";
		SiNo SI edad <= 17 Entonces
					Escribir "Según tu edad, eres un adolescente.";
		SiNo Si edad <= 39 Entonces
					Escribir "Según tu edad, eres un adulto jóven.";
		SiNo
			Escribir "Según tu edad, eres de tercera edad.";
		FinSi
	FinSi
FinSi

FinProceso
