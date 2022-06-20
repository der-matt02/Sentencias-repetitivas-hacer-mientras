Algoritmo Calculo_cuadrante_coordenadas_v3
	//definicion de varaibles 
	Definir n_sets_xy Como Entero
	Definir n_cuadrant_1, n_cuadrant_2, n_cuadrant_3, n_cuadrant_4 Como Entero
	//ingreso de datos 
	Escribir "Ingrese la cantidad de coordenadas que desea evaular:"
	Leer n_sets_xy
	
	Mientras n_sets_xy == 0 Hacer
		Escribir "ingrese un valor que sea mayor a 0"
		Escribir "Ingrese la cantidad de coordenadas que desea evaular:"
		Leer n_sets_xy
		Limpiar Pantalla;
	Fin Mientras
	
	//creacion de array 
	Dimension n_coordinates_x[n_sets_xy]
	Dimension n_coordinates_y[n_sets_xy]
	
	//creacion de menu
	Escribir "Menu"
	Escribir "1.  presione 1 para Ingreso de datos:"
	leer menu_input
	Limpiar Pantalla
	
	Mientras menu_input <> 1 Hacer
		Escribir "Ingrese la tecla correcta para poder calcular"
		Escribir "1.  presione 1 para Ingreso de datos:"
		leer menu_input
		Limpiar Pantalla
	Fin Mientras
	
	Segun menu_input Hacer
		1:
			Para i<-0 Hasta n_sets_xy - 1 Con Paso 1 Hacer
				Escribir "Ingrese la componente x de la coordenada # ", i + 1 
				Leer n_coordinates_x[i]
				
				Escribir "Ingrese la componente y de la coordenada # ", i + 1 
				Leer n_coordinates_y[i]
			Fin Para
			Limpiar Pantalla;
			
			//calculo de cuadrantes en la que estan las coordenadas
			Para i<-0 Hasta n_sets_xy - 1  Con Paso 1 Hacer
				// Primer cuadrante
				Si n_coordinates_x[i] > 0 Y n_coordinates_y[i] > 0 Entonces
					Escribir "El par ordenado ( ", n_coordinates_x[i], " ; " , n_coordinates_y[i], " ) se encuentra en el primer cuadrante"
					n_cuadrant_1 = n_cuadrant_1 + 1
				SiNo
					// Segundo cuadrante
					Si n_coordinates_x[i] < 0 Y n_coordinates_y[i] > 0 Entonces
						Escribir "El par ordenado ( ", n_coordinates_x[i], " ; " , n_coordinates_y[i], " ) se encuentra en el segundo cuadrante"
						n_cuadrant_2 = n_cuadrant_2 + 1
					SiNo
						// Tercer cuandrante
						Si n_coordinates_x[i] < 0 Y n_coordinates_y[i] < 0 Entonces
							Escribir "El par ordenado ( ", n_coordinates_x[i], " ; " , n_coordinates_y[i], " ) se encuentra en el tercer cuadrante"
							n_cuadrant_3 = n_cuadrant_3 + 1
						SiNo
							Si n_coordinates_x[i] > 0 Y n_coordinates_y[i] < 0 Entonces
								Escribir "El par ordenado ( ", n_coordinates_x[i], " ; " , n_coordinates_y[i], " ) se encuentra en el cuarto cuadrante"
								n_cuadrant_4 = n_cuadrant_4 + 1
							FinSi
						Fin Si
					Fin Si
				Fin Si
			Fin Para
			Escribir "conjunto de coordenadas en cada cuadrante:"
			Escribir  "primer cuadrante  ", n_cuadrant_1, " puntos ordenados"
			Escribir "segundo cuadrante  ", n_cuadrant_2, " puntos ordenados"
			Escribir "tercer cuadrante  ", n_cuadrant_3, " puntos ordenados"
			Escribir "cuarto cuadrante  ", n_cuadrant_4, " puntos ordenados"
		
		De Otro Modo:
			Escribir " Ingrese el valor correcto, no sea gil"
	Fin Segun
	
	
	
FinAlgoritmo
