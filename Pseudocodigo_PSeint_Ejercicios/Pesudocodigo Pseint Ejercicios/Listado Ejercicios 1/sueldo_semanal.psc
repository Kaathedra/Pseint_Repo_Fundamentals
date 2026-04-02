Algoritmo sueldo_semanal
	// calcula el sueldo semanal de acuerdo a las horas trabajadas y el valor por hora
	Escribir "Calculemos tu sueldo semanal!"
	Escribir "Para empezar, ingresa tus horas de trabajo semanales: "
	Definir horas Como Entero // definimos las horas como entero
	Leer horas // Almacenamos la variable horas
	Escribir "Ahora ingresa el valor aproximado de tu hora de trabajo: "
	Definir valhora Como Entero 
	Leer valhora // Almacenamos la variable de valor por  horas
	sueldoweek = horas * valhora // hacemos la multiplicacion de horas por el valor de cada hora
	Escribir "De acuerdo a los datos ingresados tu sueldo semanal es: " sueldoweek " CLP"
FinAlgoritmo
