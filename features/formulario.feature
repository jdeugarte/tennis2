Feature: Formulario

	Scenario: Llenar nombres
		Given que lleno "jugador1" con "Jorge" y "jugador2" con "Pedro"
		When presiono el boton "Jugar"
		Then veo al jugador1 "Jorge" y al jugador2 "Pedro"
		Then el jugador1 tiene el puntaje "0" al igual que el jugador2 que tiene "0"