Feature: Anotar jugador

	Scenario: Anotar 15-0
		Given que me encuentre en la pagina jugar con jugador1 con puntaje "0" y jugador2 con puntaje "0"
		When presiono el boton anotar del jugador1
		Then el jugador1 tiene el puntaje "15" y el jugador2 con puntaje "0"

	Scenario: Anotar 15-15
		Given que me encuentre en la pagina jugar con jugador1 con puntaje "15" y jugador2 con puntaje "0"
		When presiono el boton anotar del jugador2
		Then el jugador1 tiene el puntaje "15" y el jugador2 con puntaje "15"

	Scenario: Anotar 15-30
		Given que me encuentre en la pagina jugar con jugador1 con puntaje "15" y jugador2 con puntaje "15"
		When presiono el boton anotar del jugador2
		Then el jugador1 tiene el puntaje "15" y el jugador2 con puntaje "30"

	Scenario: Anotar 15-40
		Given que me encuentre en la pagina jugar con jugador1 con puntaje "15" y jugador2 con puntaje "30"
		When presiono el boton anotar del jugador2
		Then el jugador1 tiene el puntaje "15" y el jugador2 con puntaje "40"

	Scenario: Anotar 15-GANADOR!
		Given que me encuentre en la pagina jugar con jugador1 con puntaje "15" y jugador2 con puntaje "40"
		When presiono el boton anotar del jugador2
		Then el jugador1 tiene el puntaje "15" y el jugador2 con puntaje "GANADOR!"

	Scenario: Anotar 30-0
		Given que me encuentre en la pagina jugar con jugador1 con puntaje "15" y jugador2 con puntaje "0"
		When presiono el boton anotar del jugador1
		Then el jugador1 tiene el puntaje "30" y el jugador2 con puntaje "0"

	Scenario: Anotar 30-15
		Given que me encuentre en la pagina jugar con jugador1 con puntaje "30" y jugador2 con puntaje "0"
		When presiono el boton anotar del jugador2
		Then el jugador1 tiene el puntaje "30" y el jugador2 con puntaje "15"

	Scenario: Anotar 30-30
		Given que me encuentre en la pagina jugar con jugador1 con puntaje "30" y jugador2 con puntaje "15"
		When presiono el boton anotar del jugador2
		Then el jugador1 tiene el puntaje "30" y el jugador2 con puntaje "30"

	Scenario: Anotar 30-40
		Given que me encuentre en la pagina jugar con jugador1 con puntaje "30" y jugador2 con puntaje "30"
		When presiono el boton anotar del jugador2
		Then el jugador1 tiene el puntaje "30" y el jugador2 con puntaje "40"

	Scenario: Anotar 30-GANADOR!
		Given que me encuentre en la pagina jugar con jugador1 con puntaje "30" y jugador2 con puntaje "40"
		When presiono el boton anotar del jugador2
		Then el jugador1 tiene el puntaje "30" y el jugador2 con puntaje "GANADOR!"

	Scenario: Anotar 40-0
		Given que me encuentre en la pagina jugar con jugador1 con puntaje "30" y jugador2 con puntaje "0"
		When presiono el boton anotar del jugador1
		Then el jugador1 tiene el puntaje "40" y el jugador2 con puntaje "0"

	Scenario: Anotar 40-15
		Given que me encuentre en la pagina jugar con jugador1 con puntaje "40" y jugador2 con puntaje "0"
		When presiono el boton anotar del jugador2
		Then el jugador1 tiene el puntaje "40" y el jugador2 con puntaje "15"

	Scenario: Anotar 40-30
		Given que me encuentre en la pagina jugar con jugador1 con puntaje "40" y jugador2 con puntaje "15"
		When presiono el boton anotar del jugador2
		Then el jugador1 tiene el puntaje "40" y el jugador2 con puntaje "30"

	Scenario: Anotar 40-40
		Given que me encuentre en la pagina jugar con jugador1 con puntaje "40" y jugador2 con puntaje "30"
		When presiono el boton anotar del jugador2
		Then el jugador1 tiene el puntaje "40" y el jugador2 con puntaje "40"

	Scenario: Anotar 40-Adv
		Given que me encuentre en la pagina jugar con jugador1 con puntaje "40" y jugador2 con puntaje "40"
		When presiono el boton anotar del jugador2
		Then el jugador1 tiene el puntaje "40" y el jugador2 con puntaje "Adv"

	Scenario: Anotar 40-GANADOR!
		Given que me encuentre en la pagina jugar con jugador1 con puntaje "40" y jugador2 con puntaje "Adv"
		When presiono el boton anotar del jugador2
		Then el jugador1 tiene el puntaje "40" y el jugador2 con puntaje "GANADOR!"

	Scenario: Anotar Ganar-0
		Given que me encuentre en la pagina jugar con jugador1 con puntaje "40" y jugador2 con puntaje "0"
		When presiono el boton anotar del jugador1
		Then el jugador1 tiene el puntaje "GANADOR!" y el jugador2 con puntaje "0"

	Scenario: Anotar 0-15
		Given que me encuentre en la pagina jugar con jugador1 con puntaje "0" y jugador2 con puntaje "0"
		When presiono el boton anotar del jugador2
		Then el jugador1 tiene el puntaje "0" y el jugador2 con puntaje "15"

	Scenario: Anotar 0-30
		Given que me encuentre en la pagina jugar con jugador1 con puntaje "0" y jugador2 con puntaje "15"
		When presiono el boton anotar del jugador2
		Then el jugador1 tiene el puntaje "0" y el jugador2 con puntaje "30"

	Scenario: Anotar 0-40
		Given que me encuentre en la pagina jugar con jugador1 con puntaje "0" y jugador2 con puntaje "30"
		When presiono el boton anotar del jugador2
		Then el jugador1 tiene el puntaje "0" y el jugador2 con puntaje "40"

	Scenario: Anotar 0-GANAR
		Given que me encuentre en la pagina jugar con jugador1 con puntaje "0" y jugador2 con puntaje "40"
		When presiono el boton anotar del jugador2
		Then el jugador1 tiene el puntaje "0" y el jugador2 con puntaje "GANADOR!"

	


	

	


	