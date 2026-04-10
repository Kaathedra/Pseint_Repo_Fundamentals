Proceso GastosLog
	Definir opcion_menu, gasto_parcial, total_gastos, cant_gastos, gasto_ingresado Como Entero;
	Definir tipo_gasto, gasto_list Como Caracter;
	Repetir
		Borrar Pantalla;
		Escribir "==== Registro diario de gastos ===";
		Escribir "1. Registrar gastos.";
		Escribir "2. Mostrar analisis del total.";
		Escribir "3. Salir.";
		Escribir "Ingresa una opción (1-3): ";
		Leer opcion_menu;
		Segun opcion_menu Hacer
		1: 
				total_gastos = 0;
				gasto_list = "";
				gasto_ingresado = 0;
				Escribir "Ingresa la cantidad de gastos a registrar: ";
				Leer cant_gastos;
				Mientras cant_gastos < 2 Hacer
					Escribir "Error. El valor debe ser un número entero mayor o igual a 2.";
				Escribir Sin Saltar "Intente nuevamente: ";
				Leer cant_gastos;
			FinMientras
			Borrar Pantalla;
			Mientras gasto_ingresado < cant_gastos Hacer
				Escribir "Ingresa el tipo de gasto: ";
				Leer tipo_gasto;
				gasto_list = gasto_list + tipo_gasto + ". ";
				Escribir "Ingresa el monto del gasto: ";
				Leer gasto_parcial;
				total_gastos = total_gastos + gasto_parcial;
				gasto_ingresado = gasto_ingresado + 1;
				Escribir "Presiona Enter para continuar";
				Esperar Tecla;
				Borrar Pantalla;
			FinMientras
		2:
			Borrar Pantalla;
			Escribir "Lista de gastos: ", gasto_list;
			Escribir "Total de gastos: ", total_gastos;
			SI total_gastos > 50000 Entonces
				Escribir "Gasto diario elevado.";
			SiNo
				Escribir "Gasto diario controlado.";
			FinSi
			Escribir "Presiona Enter para volver al menu.";
			Esperar Tecla;
		3:
			Escribir "Fin del registro.";
		FinSegun
	Hasta Que opcion_menu == 3;
FinProceso
