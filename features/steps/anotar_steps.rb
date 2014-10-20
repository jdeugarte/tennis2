Given(/^que me encuentre en la pagina jugar$/) do
  visit '/'
  fill_in("jugador1", :with => "nombre1")
  fill_in("jugador2", :with => "nombre2")
  click_button("Jugar")
end


When(/^presiono el boton anotar del jugador(\d+) con puntaje "(.*?)" y el jugador(\d+) con puntaje "(.*?)"$/) do |nro_jugador1, puntaje1, nro_jugador2, puntaje2|
  last_response.body.should =~ /#{'"puntaje_jugador'+nro_jugador1+'">'+puntaje1}/m
  last_response.body.should =~ /#{'"puntaje_jugador'+nro_jugador2+'">'+puntaje2}/m
  click_button "anotar_jugador"+nro_jugador1
end

Then(/^el jugador(\d+) tiene el puntaje "(.*?)" y el jugador(\d+) con puntaje "(.*?)"$/) do |nro_jugador1, puntaje1, nro_jugador2, puntaje2|
  last_response.body.should =~ /#{'"puntaje_jugador'+nro_jugador1+'">'+puntaje1}/m
  last_response.body.should =~ /#{'"puntaje_jugador'+nro_jugador2+'">'+puntaje2}/m
end
