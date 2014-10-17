Feature: Bienvenida

	Scenario: Pagina de inicio
		Given que me encuentre en la pagina de inicio
		Then veo el mensaje "Tennis Scorer"
		Then veo la imagen "/tennis.jpg"