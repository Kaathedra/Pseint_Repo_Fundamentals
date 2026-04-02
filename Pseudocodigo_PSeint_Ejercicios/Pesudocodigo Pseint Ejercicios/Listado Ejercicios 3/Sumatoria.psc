Proceso Sumatoria
    Definir opcion, num, total Como Entero;
    total = 0; 
		Repetir
        Escribir "====== MENÚ PRINCIPAL ======";
        Escribir "1.- Ingresar un número y sumarlo";
        Escribir "2.- Mostrar la suma acumulada";
        Escribir "3.- Salir";
        
        Escribir "Elije una opción: ";
        Leer opcion;
		
        Segun opcion Hacer
            1:
                Escribir "Ingresa un número: ";
                Leer num;
                total = total + num;
                Escribir "Número sumado con éxito!";
            2:
                Escribir "La suma acumulada actual es: ", total;
            3:
                Escribir "Has decidido salir. ¡Adiós!";
            De Otro Modo:
                Escribir "Error, ingresa una opción válida.";
        FinSegun
        
        Escribir ""; 
    Hasta Que opcion = 3
FinProceso