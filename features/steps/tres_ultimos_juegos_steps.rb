require './jugador'

Given(/^que tengo "(.*?)" partidas con "(.*?)" y resultados "(.*?)"$/) do |num, jugadores, resultados|
  i=0
  vec=jugadores.split(/\W/)
  vec2=resultados.split(/\W/)
  while i<num.to_i
  	jugador1=Jugador.new
  	jugador2=Jugador.new
  	visit '/'

  	fill_in("jugador1", :with =>vec[i*2] )
  	fill_in("jugador2", :with => vec[i*2+1])
  	click_button("Jugar")

	  j=0
	  while j<jugador2.puntos(vec2[i*2+1]) do
	      submit_form("form2")
	      j+=1
	  end
	  j=0
	  while j<jugador1.puntos(vec2[i*2]) do
	    submit_form ("form1")
	    j+=1  
	  end
	i+=1
  end
end

Then(/^veo los ultimos (\d+) resultados "(.*?)" "(.*?)" "(.*?)"$/) do |num, resultados1, resultados2, resultados3|
  visit '/'
  last_response.body.should =~ /#{resultados1}/m
  last_response.body.should =~ /#{resultados2}/m
  last_response.body.should =~ /#{resultados3}/m
end

