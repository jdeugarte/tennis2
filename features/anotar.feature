Feature: Anotar jugador

	Scenario: Anotar 15-0
		Given que me encuentre en la pagina jugar
		When presiono el boton anotar del jugador1 con puntaje "0" y el jugador2 con puntaje "0"
		Then el jugador1 tiene el puntaje "15" y el jugador2 con puntaje "0"

	Scenario: Anotar 0-15
		Given que me encuentre en la pagina jugar
		When presiono el boton anotar del jugador2 con puntaje "0" y el jugador1 con puntaje "0"
		Then el jugador2 tiene el puntaje "15" y el jugador1 con puntaje "0"