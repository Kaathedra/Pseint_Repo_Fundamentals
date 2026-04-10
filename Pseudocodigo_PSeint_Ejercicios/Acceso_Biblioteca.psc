Proceso Acceso_Biblioteca
	Definir agno_residen Como Entero;
	Definir has_carnet Como Caracter;
	Escribir "========= Bienvenido a =========";
	Escribir "===== Biblioteca Municipal =====";
	Escribir "Ingrese sus años de residencia en números: ";
	Leer agno_residen;
	Escribir "";
	Si agno_residen < 2 Entonces
		Escribir "Se requiere un mínimo de 2 años para acceder al beneficio.";
	SiNo
		Escribir "Posee carnet de biblioteca?(si/no)";
		Leer has_carnet;
		has_carnet = Minusculas(has_carnet);
		Si has_carnet == "si" Entonces
			Escribir "";
			Escribir "Prestamo autorizado.";
		SiNo
			Escribir "";
			Escribir "Debe tramitar su carnet primero.";
		FinSi	
	FinSi
	Escribir "";
	Escribir "Fin del proceso.";
FinProceso