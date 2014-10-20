require 'sinatra'
require './jugador'

j1=Jugador.new
j2=Jugador.new

get '/' do
	j1.puntaje=0
	j1.puntaje=0
	erb :bienvenida
end

post '/jugar' do
	if params[:ganador]=='1'
		j1.anotar(j2)
	elsif params[:ganador]=='2'
		j2.anotar(j1)
	end
	@jugador1=params[:jugador1]
	@jugador2=params[:jugador2]
	@puntaje1=j1.puntaje
	@puntaje2=j2.puntaje
	erb :jugar
end

