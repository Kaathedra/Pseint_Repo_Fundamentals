Algoritmo Carga_Gas
	// DEFINIMOS VARIABLES
	Definir tipo_gas, monto_carga, medio_pago, i Como Entero;
	Definir dcto, carga, precio Como Real;
	Definir tipo_gas_txt Como Caracter;
	dcto = 0;
	// INICIO DE PROGRAMA
	Escribir "=====Bienvenido a Bomba KBUM=====";
	Repetir
	Escribir "Cuanto desea cargar? $: "; // SOLICITAMOS EL MONTO A CARGAR
	Leer monto_carga; // SE CAPTURA EL VALOR DEL MONTO A PAGAR EN LA VARIABLE monto_carga
	Si monto_carga <= 0 Entonces //VALIDAMOS QUE EL VALOR DE monto_carga SEA UN ENTERO POSITIVO
		Escribir "Error de Ingreso";
	FinSi
	Hasta Que monto_carga > 0;
	Escribir "=============================="; // DESPLEGAMOS LAS OPCIONES DISPONIBLES DE COMBUSTIBLE
	Escribir "1. Gasolina 93: $1200/L";
	Escribir "2. Gasolina 95: $ 1250/L";
	Escribir "3. Gasolina 97: $ 1300/L";
	Escribir "================================";
	Repetir
	Escribir "================================";
	Escribir "Seleccione el tipo de gasolina a cargar[1, 2 o 3]: "; // SOLICITAMOS SELECCIONAR UNA OPCION
	Leer tipo_gas; // GUARDAMOS LA OPCION EN LA VARIABLE
	Si tipo_gas < 1 o tipo_gas > 3 Entonces // VALIDAMOS SI LA OPCION INGRESADA ES CORRECTA, DE LO CONTRARIO SEÑALAMOS ERROR Y REPETIMOS EL PROCESO PARA INDICAR EL TIPO DE COMBUSTIBLE
		Escribir "Error de Ingreso. Digite una opcion valida";
	FinSi
	Hasta Que tipo_gas >= 1 y tipo_gas <= 3
	Segun tipo_gas Hacer // DEFINIMOS LA VARIABLE precio y LA VARIABLE tipo_gas_txt SEGUN LA OPTCION INGRESADA EN LA VARIABLE tipo_gas
		1: precio = 1200;
			tipo_gas_txt = "93 Octanos";
		2: precio = 1250;
			tipo_gas_txt = "95 Octanos";
		3: precio = 1300;
			tipo_gas_txt = "97 Octanos";
	FinSegun
	carga = monto_carga / precio;
		Escribir "Su compra es de: ", Redon(carga * 100) / 100, " litros. Como desea pagar?"; // INDICAMOS DE CUANTOS LITROS CONSISTE LA COMPRA Y PREGUNTAMOS POR EL MEDIO DE PAGO
		Repetir
		Escribir "Efectivo(1) o Tarjeta(2): "; // ENTREGAMOS LAS OPCIONES DE PAGO Y CAPTURAMOS LA ELECCION EN LA VARIABLE medio_pago. INICIAMOS UNA VALIDACION
		Leer medio_pago;
		Si medio_pago > 2 o medio_pago < 1 Entonces // DECLARAMOS EL RANGO DE ERROR PARA EVITAR ROMPER EL PROGRAMA
			Escribir "Error de Ingreso. Digite opcion valida";
		FinSi
	Hasta Que medio_pago > 0 y medio_pago < 3;
	Escribir Sin Saltar "Procesando compra"; // NOS HACEMOS LOS BACANES PONIENDO ESTO
	Para i = 1 Hasta 3 Hacer
		Esperar 700 Milisegundos;
		Escribir Sin Saltar ".";
	FinPara
	Esperar 1 Segundos;
	Escribir "";
		// IMPRIMIMOS LA BOLETA CON EL DETALLE DE LA COMPRA
		Escribir "============================";
		Escribir "===== BOLETA KBUM SPA ======";
		Escribir "============================";
		Escribir "Monto de carga: $ ", monto_carga, " CLP.";
		Si medio_pago == 1 Entonces
			dcto = Redon(monto_carga * 0.10); // APLICAMOS UN DESCUENTO DEL 10% SI LA OPCION DE PAGO ASI LO REQUIERE
			Escribir "10% Dcto: $ ", dcto, " CLP.";
		SiNo
			Escribir "Sin descuento aplicado";
		FinSi
		Escribir "Tipo de combustible: Gasolina ", tipo_gas_txt;
		Escribir "Carga: ", Redon(carga * 100) / 100, " Litros";
		Escribir "Total a pagar: $ ", (monto_carga - dcto), " CLP.";
	FinAlgoritmo