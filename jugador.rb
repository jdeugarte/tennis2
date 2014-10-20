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
				@puntaje=40
			else
				@puntaje=0
			end
		end
	end

	attr_accessor :puntaje
end