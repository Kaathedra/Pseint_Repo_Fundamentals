Algoritmo Carga_Gas
	Definir tipo_gas, tipo_gas_txt, monto_carga, medio_pago Como Entero;
	Definir dcto, carga Como Real;
	tipo_gas = 0;
	Escribir "=====Bienvenido a Bomba KBUM=====";
	Escribir "Cuanto desea cargar? $: ";
	Leer monto_carga;
	Escribir "==============================";
	Escribir "1. Gasolina 93: $1200/L";
	Escribir "2. Gasolina 95: $ 1250/L";
	Escribir "3. Gasolina 97: $ 1300/L";
	Escribir "================================";
	Escribir "Seleccione el tipo de gasolina a cargar(1, 2 o 3): ";
	Leer tipo_gas;
	Si tipo_gas == 1 Entonces
		tipo_gas_txt = 93;
		carga = monto_carga / 1200;
	SiNo
		Si tipo_gas == 2 Entonces
			tipo_gas_txt = 95;
			carga = monto_carga / 1250;
		SiNo
			Si tipo_gas == 3 Entonces
				tipo_gas_txt = 97;
				carga = monto_carga / 1300;
			SiNo
				Escribir "Error de ingreso";
			FinSi
		FinSi
	FinSi
	Si tipo_gas == 1 o tipo_gas == 2 o tipo_gas == 3 Entonces
	Escribir "Su compra es de: ", Redon(carga * 100) / 100, " litros. Como desea pagar?";
	Escribir "Efectivo(1) o Tarjeta(2): ";
	Leer medio_pago;
	dcto = monto_carga * 0.10;
	Escribir "Procesando compra...";
	Esperar 2.5 segundos;
	// Boleta
	Escribir "===================";
	Escribir "===== BOLETA ======";
	Escribir "===================";
	Escribir "Monto de carga: $", monto_carga, " CLP.";
	Escribir "Tipo de combustible: Gasolina ", tipo_gas_txt, " octanos.";
	Si medio_pago == 1 Entonces
		Escribir "10% Dcto: ", dcto, " CLP.";
	SiNo
		Escribir "Sin descuento:";
	FinSi
	Escribir "Litros de carga: ", Redon(carga * 100) / 100;
	Escribir "Subtotal: $", (monto_carga - dcto), " CLP.";
FinSi
FinAlgoritmo