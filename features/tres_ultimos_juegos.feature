Feature: Mostrar tres ultimos ganadores
	Scenario: pagina bienvenida
	Given que tengo "3" partidas con "Jorge Pedro Jorge Pedro Jorge Pedro" y resultados "GANADOR! 30 GANADOR! 15 GANADOR! 0"
	Then veo los ultimos 3 resultados "Jorge Pedro GANADOR! 30" "Jorge Pedro GANADOR! 15" "Jorge Pedro GANADOR! 0"