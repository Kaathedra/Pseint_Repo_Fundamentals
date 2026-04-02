Proceso Autonomia_Auto
	definir estanque, falta Como Real;
	Escribir "Ingresa los litros disponibles: ";
	Leer estanque;
	
	Si estanque * 12 < 250 Entonces
		falta = (250 - (estanque * 12)) / 12;
		falta = Redon(falta * 100) / 100;
		Escribir "No alcanza. Faltan: ", falta, " litros. Necesitas pasar a cargar combustible";
	SiNo
		Escribir "Tu estanque te permite realizar tu viaje. No olvides revisar el nivel al finalizar";
	FinSi
FinProceso
