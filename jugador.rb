class Jugador
	def initialize
		@puntaje=0
	end
	
	def anotar(jugador2)
		case @puntaje
		when nil
			@puntaje=0
		when 0
			@puntaje=15
		when 15
			@puntaje=30
		when 30
			@puntaje=40
		when 40
			if jugador2.puntaje==40
				@puntaje='Adv'
			elsif jugador2.puntaje=='Adv'
				jugador2.puntaje=40
			else
				@puntaje="GANADOR!"
			end
		when 'Adv'
			@puntaje="GANADOR!"
		end
	end

	def puntos(p)
		num=0
		if p=='Adv'
			return 4
		end
		p=p.to_i
		case p
		when 0
			num=0
		when 15
			num=1
		when 30
			num=2
		when 40
			num=3
		when 'GANADOR!'
			num=4
		end
		
		num
	end

	def empezar
		@puntaje=0
	end

	attr_accessor :puntaje,:nombre
end