Algoritmo Catalogo_Los_Chamos_SB
	Definir opMenu, opProd, metodoPago,confCompra,confContacto,confSalir Como Entero
	Definir prod1,prod2,prod3,prod4,prod5,inforContacto Como Caracter 
	Definir precio1,precio2,precio3,precio4,precio5 Como Real
	opMenu<-0
	//Variables pre definidas para el catálogo productos. Posteriormente 
	//se adicionará la lógica que permita administrar dichos productos.
	prod1<-"Queso blanco"
	prod2<-"Gall. Catalinas"
	prod3<-"400gr Chocolate importado"
	prod4<-"Harina p/ arepas (1Kg)"
	prod5<-"Promo 3Kg Harina p/arepas"
	
	precio1<-900
	precio2<-250
	precio3<-850
	precio4<-700
	precio5<-1800
	
	//Menú principal
	Escribir"Hola! gracias por ingresar a nuestro Catalogo Productos de Market Los Chamos SB"
	
	Repetir
		
		
		Escribir "Por favor escriba el número correspondiente a la opción que desee elegir:"
		Escribir "1.- Realizar un pedido a domicilio"
		Escribir "2.- Consultar medios de contacto"
		Escribir "3.- Salir"
		
		Leer opMenu
		Limpiar Pantalla
		
		
		
		Si opMenu >=1 y opMenu<3 Entonces
			Segun opMenu Hacer
				1:
					Escribir "Escriba el número correspondiente al producto que desea seleccionar:"
					
					Escribir "1 ",prod1, "$",precio1
					Escribir "2 ",prod2, "$",precio2
					Escribir "3 ",prod3, "$",precio3
					Escribir "4 ",prod4, "$",precio4
					Escribir "5 ",prod5, "$",precio5
					leer opProd
					Limpiar Pantalla
					Escribir "Como desea abonar? "
					Escribir "1. En Efectivo"
					Escribir "2. Por MercadoPago"
					Leer metodoPago
					si metodoPago=1 Entonces
						pago="en efectivo"
					SiNo
						pago="por mercadoPago"
					FinSi
					Limpiar Pantalla
					Segun opProd Hacer
						1:
							Escribir "Su compra es ", prod1," por un valor de $",precio1," a ser abonado ", pago
							Escribir "al momento de recibir su producto"
						2:
							Escribir "Su compra es ", prod2," por un valor de $",precio2," a ser abonado ", pago
							Escribir "al momento de recibir su producto"
						3:
							Escribir "Su compra es ", prod3," por un valor de $",precio3," a ser abonado ", pago
							Escribir "al momento de recibir su producto"
						4:	
							Escribir "Su compra es ", prod4," por un valor de $",precio4," a ser abonado ", pago
							Escribir "al momento de recibir su producto"
						5:
							Escribir "Su compra es ", prod5," por un valor de $",precio5," a ser abonado ", pago
							Escribir "al momento de recibir su producto"
						
						De Otro Modo:
							Escribir "El número ingresado no es válido. Por favor, vuelva a intentarlo"	
					Fin Segun
					
					Escribir "Confirma su compra?"
					Escribir "1.- Si"
					Escribir "2.- No"
					Leer confCompra
					si confCompra=1 Entonces
						//Asuminiendo que el usuario está registrpo sus datos previamente de manera correcta
						//Más adelante se desarrollará un código que valide los datos del usuario
						Escribir "Su compra será enviada a su domicilio registrado"
						opMenu =3
										
					FinSi
					Limpiar Pantalla
				2:
					Escribir "Telefono: 11 99995555"
					Escribir "Correo: atencionloschamossb@gmail.com"
					Escribir "Instagram: @loschamosSB"
					Escribir "Quisiera que nos pongamos en contacto con usted?"
					Escribir "1.-Si"
					Escribir "2.-No"
					Leer confContacto
					Limpiar Pantalla
					si confContacto=1 Entonces
						Escribir "Ingrese su información de contacto"
						Leer inforContacto
						Limpiar Pantalla
						Escribir "Muchas gracias por brindarnos su confianza, pronto le contactaremos!"
						Escribir " "
						Escribir "Presione 1 para volver al menú inicial o 2 para salir"
						Leer confSalir
						si confSalir= 2 Entonces
							opMenu=3
						FinSi
					sino 
						
					FinSi
					
					Limpiar Pantalla
				3:
					Escribir "Muchas gracias por visitarnos, vuelve pronto! "
					opMenu =3
				De Otro Modo:
					Escribir "El número ingresado no es válido. Por favor, vuelva a intentarlo"	
			Fin Segun
			
		Sino
			
			
		FinSi
	Hasta Que opMenu = 3
	Escribir "Muchas gracias por visitarnos, vuelve pronto!******** "
FinAlgoritmo
