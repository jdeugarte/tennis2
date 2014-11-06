require 'sinatra'
require './jugador'

#@vector_jugadores=[]

j1=Jugador.new
j2=Jugador.new

get '/' do
	j1.puntaje=0
	j1.puntaje=0
	#@vector_jugadores
	erb :bienvenida
	
end

post '/jugar' do
	case params[:ganador]
	when "0"
		j1.empezar
		j2.empezar
	when "1"
		j1.anotar(j2)
	when "2"
		j2.anotar(j1)
	end
	@jugador1=params[:jugador1]
	@jugador2=params[:jugador2]
	@puntaje1=j1.puntaje
	@puntaje2=j2.puntaje
		erb :jugar
end

