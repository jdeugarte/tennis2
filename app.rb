require 'sinatra'

get '/' do
	erb :bienvenida
end

post '/jugar' do
	@jugador1=params[:jugador1]
	@jugador2=params[:jugador2]
	@puntaje1=0
	@puntaje2=0
	erb :jugar
end