Proceso Tickets_Bus
	Definir destino Como Caracter;
	Definir precio_ticket, cont1, cont2, cont3, opcion_menu, opcion_destino Como Entero;
	cont1 = 0;
	cont2 = 0;
	cont3 = 0;
	Escribir "Bienvenido, qué deseas hacer?";
	Repetir
		Escribir "=====Buses USB=====";
		Escribir "1. Comprar pasajes";
		Escribir "2. Ver resumen de ventas";
		Escribir "3. Salir";
		Escribir "====================";
		Escribir "Elige una opcion [1-3]: ";
		Leer opcion_menu;
		Segun opcion_menu Hacer
			1 : Escribir "1. Talca ($10 000)";
				Escribir "2. Concepción($20 000)";
				Escribir "3. Puerto Montt($35 000)";
				Escribir "Seleccione un destino [1-3]: ";
				leer opcion_destino;
		FinSegun
	Hasta Que  opcion_menu == 3;
	
FinProceso
