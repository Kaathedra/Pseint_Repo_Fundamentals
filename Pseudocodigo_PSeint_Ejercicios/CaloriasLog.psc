Proceso CaloriasLog
	Definir opcion_menu, cant_ejercicios, cal_quem, cont_exe_done, cont_cal, i Como Entero;
	Definir exe_type, exe_list Como Caracter;
	
	cont_exe_done = 0;
	
	cont_cal = 0;
	
	exe_list = "";
	
	Repetir
		Escribir "Sistema de Control de Entrenamiento - Bencinex Fit";
		Escribir "1. Registrar ejercicios.";
		Escribir "2. Mostrar análisis de calorías.";
		Escribir "3. Salir.";
		Escribir "Que desea hacer?(1-3): ";
		Leer opcion_menu;
		Segun opcion_menu Hacer
			1: 
				Borrar Pantalla;
				
				cont_exe_done = 0;
				
				cont_cal = 0;
				
				Escribir "Ingresa la cantidad de ejercicios que vas a realizar: ";
				Leer cant_ejercicios;
				Mientras cant_ejercicios < 2 Hacer 
					Escribir "La cantidad de ejercicios debe ser mayor o igual a 2. Intenta nuevamente: ";
					Leer cant_ejercicios;
				FinMientras
					Mientras cont_exe_done < cant_ejercicios Hacer
					Escribir "Ingresa el nombre de tu entrenamiento: ";
					Leer exe_type;
					Escribir "Presiona enter cuando termines el ejercicio.";
					Esperar Tecla;
					Escribir "Cuantas calorias quemaste en este entrenamiento?: ";
					Leer cal_quem;
					Escribir "Presiona enter para continuar.";
					Esperar Tecla;
					cont_cal = cont_cal + cal_quem;
					
					exe_list = exe_list + exe_type + ". ";
					
					cont_exe_done = cont_exe_done + 1;
				FinMientras
				Borrar Pantalla;
			2:
				Borrar Pantalla;
				
				Escribir Sin Saltar "Contabilizando calorias";
				Esperar 200 Milisegundos;
				Para i <- 1 Hasta 3 Hacer
					Escribir Sin Saltar ".";
					Esperar 400 Milisegundos;
				FinPara
				Borrar Pantalla;
				Escribir "Ejercicios realizados: ", exe_list;
				Escribir "Calorias quemadas: ", cont_cal;
				Si cont_cal > 1500 Entonces
					Escribir "Meta diaria superada con exito.";
				SiNo
					Escribir "Entrenamiento Moderado.";
				FinSi
				Escribir "Presione enter para continuar.";
				Esperar Tecla;
				Borrar Pantalla;
			3:
				Esperar 300 Milisegundos;
				Escribir "Has decido salir.";
				Esperar 500 Milisegundos;
				Escribir "Cerrando sesion de entrenamiento";
		FinSegun
	Hasta Que opcion_menu == 3
FinProceso