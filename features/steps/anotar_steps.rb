require './jugador'

Given(/^que me encuentre en la pagina jugar con jugador(\d+) con puntaje "(.*?)" y jugador(\d+) con puntaje "(.*?)"$/) do |nro_jugador1, puntaje1, nro_jugador2,puntaje2|
  visit '/'
  fill_in("jugador1", :with => "nombre1")
  fill_in("jugador2", :with => "nombre2")
  click_button("Jugar")
  j=Jugador.new
  i=0
  while i<j.puntos(puntaje1) do
      submit_form("form"+nro_jugador1)
      i+=1
  end
  i=0
  while i<j.puntos(puntaje2) do
    submit_form ("form"+nro_jugador2)
    i+=1  
  end

  last_response.body.should =~ /#{'"puntaje_jugador'+nro_jugador1+'">'+puntaje1}/m
  last_response.body.should =~ /#{'"puntaje_jugador'+nro_jugador2+'">'+puntaje2}/m
end

When(/^presiono el boton anotar del jugador(\d+)$/) do |nro_jugador1|
  submit_form ("form"+nro_jugador1)
end

Then(/^el jugador(\d+) tiene el puntaje "(.*?)" y el jugador(\d+) con puntaje "(.*?)"$/) do |nro_jugador1, puntaje1, nro_jugador2,puntaje2|
  last_response.body.should =~ /#{'"puntaje_jugador'+nro_jugador1+'">'+puntaje1}/m
  last_response.body.should =~ /#{'"puntaje_jugador'+nro_jugador2+'">'+puntaje2}/m
end
