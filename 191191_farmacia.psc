Algoritmo Farmacia
	Definir cant,Ibo,Parat,Lorat,Aspi,MoElec,PagMon,MetPag Como Entero
	Definir PreIbo,PreParat,PreLorat,PreAspi,PreTotal,TotIbo,TotParat,TotLorat,TotAspi,PuntTot,CantMon,CantPun,PuntRes,Bonif,PreMon Como Real
	PreIbo <- 45.50
	PreParat <- 30.90
	PreLorat <- 35.10
	PreAspi <- 20.50
	Escribir '¿Cuantos articulos lleva?'
	Leer cant
	Si cant>0 Y cant<=3 Entonces
		Escribir 'Elige la cantidad de cada producto'
		Escribir '1. Iboprofeno'
		Leer Ibo
		Escribir '2.Paracetamol'
		Leer Parat
		Escribir '3.Loratadina'
		Leer Lorat
		Escribir '4.Aspirina'
		Leer Aspi
		tprod <- Ibo+Parat+Lorat+Aspi
		Si tprod=cant Entonces
			TotIbo <- PreIbo*Ibo
			TotParat <- PreParat*Parat
			TotLorat <- PreLorat*Lorat
			TotAspi <- PreAspi*Aspi
			PreTotal <- TotIbo+TotParat+TotLorat+TotAspi
			Escribir '¿Presenta Monedero Electronico?'
			Escribir '1.Si'
			Escribir '2.No'
			Leer MoElec
			Segun MoElec  Hacer
				1:
					Escribir '¿Gusta pagar con monedero electronico?'
					Escribir '1.Si'
					Escribir '2.No'
					Leer PagMon
					Segun PagMon  Hacer
						1:
							Si Ibo<=3 Entonces
								PuntIbo <- TotIbo*0.03
							FinSi
							Si Parat<=3 Entonces
								PuntLorat <- TotLorat*0.03
							FinSi
							PuntTot <- PuntIbo+PuntLorat
							Escribir 'Su total a pagar es: ',PreTotal
							Escribir '1.Paga todo con monedero electronico'
							Escribir '2.Paga un porcentaje con el monedero electronico'
							Leer MetPago
							Segun MetPago  Hacer
								1:
									Escribir 'Ingrese la cantidad que tiene el monedero'
									Leer CantMon
									PreMon <- CantMon-PreTotal
									Bonif <- PuntTot+PreMon
									Si CantMon>=PreTotal Entonces
										Escribir 'Cantidad de Puntos: ',CantMon
										Escribir 'Cantidad de puntos restantes con el pago: ',PreMon
										Escribir 'Bonificacion en el monedero: ',PuntTot
										Escribir 'Total en el Monedero Electronico: ',Bonif
									SiNo
										Escribir 'No tiene puntos sufientes para pagar todo con el monedero'
									FinSi
								2:
									Escribir 'Ingrese la cantidad de puntos'
									Leer CantMon
									Escribir '¿Con cuantos puntos desea pagar?'
									Leer CantPun
									PreMon <- PreTotal-CantPun
									PuntRes <- CantMon-CantPun
									Bonif <- PuntTot+PuntRes
									Escribir 'Falta a Pagar: ',PreMon
									Escribir 'Cantidad de Puntos: ',CantMon
									Escribir 'Cantidad de puntos restantes con el pago: ',PuntRes
									Escribir 'Bonificacion en el monedero: ',PuntTot
									Escribir 'Total en el Monedero Electronico: ',Bonif
							FinSegun
						2:
							Escribir 'Su total a pagar es: ',PreTotal
					FinSegun
				2:
					Escribir 'Su total a pagar es: ',PreTotal
			FinSegun
		SiNo
			Escribir 'Tiene que ser productos igual a la cantidad ingresada'
		FinSi
	SiNo
		Escribir 'Tiene que llevar productos mayores a 0 y menores 3'
	FinSi
FinAlgoritmo

