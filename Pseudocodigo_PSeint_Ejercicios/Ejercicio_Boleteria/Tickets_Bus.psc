SubProceso valoracion <- LeerValidado(mensaje, min, max) // Modulo de validacion de entradas
	Definir valoracion Como Entero;
	Escribir mensaje;									// Subproceso encargado de validar las opciones ingresadas, si es valido avanza, sino arroja error y pide volver a intentarlo
	Leer valoracion;
	mientras valoracion < min o valoracion > max Hacer
		Escribir Sin Saltar "Entrada invalida, Intente nuevamente (", min, "-", max, ")", ": ";
		Leer valoracion;
	FinMientras
FinSubProceso

SubProceso AnimacionCarga (tiempo, cant_puntos) // Modulo Animacion
	Definir I Como Entero;
	Escribir Sin Saltar "Procesando";   // Pequeña animacion que evidencia un proceso de "pensar" del programa
	Para I <- 1 Hasta cant_puntos Hacer
		Esperar tiempo Milisegundos;
		Escribir Sin Saltar ".";
	FinPara
	Escribir "";
FinSubProceso

// Inicio del programa //

Proceso Tickets_Bus
	Definir destino, tiene_dcto Como Caracter;
	Definir precio_ticket, cont_tal, cont_con, cont_ptmt, sum, opcion_menu, opcion_destino, cant_pasajes, subtotal Como Entero;
	Definir dcto, total_compra Como Real;
	
	cont_tal = 0;
	cont_con = 0;
	cont_ptmt = 0;
	
	
	Escribir "Bienvenido, qué deseas hacer?";
	Repetir
		Escribir "=====Buses USB=====";
		Escribir "1. Comprar pasajes";
		Escribir "2. Ver resumen de ventas";
		Escribir "3. Salir";
		Escribir "====================";
		opcion_menu <- LeerValidado("Elija una opcion[1-3]: ", 1, 3);
		Segun opcion_menu Hacer
			1 : 
				Escribir "1. Talca ($10 000)";
				Escribir "2. Concepción($20 000)";
				Escribir "3. Puerto Montt($35 000)";
				opcion_destino <- LeerValidado("Elija un destino: ", 1, 3);
				cant_pasajes <- LeerValidado("Cuantos pasajes desea?: ", 1, 40);
				Esperar 500 Milisegundos;
				Segun opcion_destino Hacer
					1: 
						destino = "Talca";
						precio_ticket = 10000;
						cont_tal = cont_tal + cant_pasajes;
					2: 
						destino = "Concepción";
						precio_ticket = 20000;
						cont_con = cont_con + cant_pasajes;
					3: 
						destino = "Puerto Montt";
						precio_ticket = 35000;
						cont_ptmt = cont_ptmt + cant_pasajes;
					De Otro Modo:
						precio_ticket = 0;
				FinSegun
				Esperar 500 Milisegundos;
				Si precio_ticket > 0 Entonces
					Escribir "Tiene tarjeta de descuento?(s/n): ";
					Leer tiene_dcto;
					tiene_dcto <- Minusculas(tiene_dcto);
					Mientras tiene_dcto <> "s" y tiene_dcto <> "n" Hacer
						Escribir Sin Saltar "Error de ingreso. Intente nuevamente(s/n): ";
						Leer tiene_dcto;
						tiene_dcto <- Minusculas(tiene_dcto);
					FinMientras
					Si tiene_dcto == "s" Entonces
						total_compra = (cant_pasajes * precio_ticket) * 0.9;
					SiNo 
						Si tiene_dcto == "n" Entonces
							total_compra = cant_pasajes * precio_ticket;
						FinSi
					FinSi
					AnimacionCarga(300, 5);
					Esperar 700 Milisegundos;
					Escribir "============================";
					Escribir "~~~~~~~~~~BOLETA~~~~~~~~~~~~";
					Escribir "Destino: ", destino;
					Escribir "Cantidad: ", cant_pasajes;
					Escribir "Subtotal: ", cant_pasajes * precio_ticket;
					Si tiene_dcto == "s" Entonces
						Escribir "Descuento (10%): ",(precio_ticket * cant_pasajes) * 0.1;
					SiNo
						Escribir "Descento no aplica";
					FinSi
					Escribir "Total a pagar: ", total_compra;
				FinSi
				Escribir "";
				Escribir "Presione cualquier tecla para continuar";
				Esperar Tecla;
				Escribir "";
			2: 
				Esperar 500 Milisegundos;
				Escribir "=== Resumen de ventas===";
				Escribir "Pasajes a Talca: ", cont_tal;
				Escribir " Pasajes a Concepción: ", cont_con;
				Escribir "Pasajes a Puerto Montt: ", cont_ptmt;
				Escribir "========================";
				Escribir "Presione cualquier tecla para continuar";
				Esperar Tecla;
				Escribir "";
		FinSegun
	Hasta Que  opcion_menu == 3;
	Esperar 300 Milisegundos;
	Escribir "Has decidido salir. Hasta luego";
	Escribir "";
	Esperar 600 Milisegundos;
FinProceso