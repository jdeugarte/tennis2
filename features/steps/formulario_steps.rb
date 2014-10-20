Given(/^que lleno "(.*?)" con "(.*?)" y "(.*?)" con "(.*?)"$/) do |area1, nombre1, area2, nombre2|
  visit '/'
  fill_in(area1, :with => nombre1)
  fill_in(area2, :with => nombre2)
end

When(/^presiono el boton "(.*?)"$/) do |boton|
  click_button(boton)
end

Then(/^veo al jugador(\d+) "(.*?)" y al jugador(\d+) "(.*?)"$/) do |nro_jugador1, nombre1, nro_jugador2, nombre2|
  last_response.body.should =~ /#{'"nombre_jugador'+nro_jugador1+'">'+nombre1}/m
  last_response.body.should =~ /#{'"nombre_jugador'+nro_jugador2+'">'+nombre2}/m
end

Then(/^el jugador(\d+) tiene el puntaje "(.*?)" al igual que el jugador(\d+) que tiene "(.*?)"$/) do |nro_jugador1, puntaje1, nro_jugador2, puntaje2|
  last_response.body.should =~ /#{'"puntaje_jugador'+nro_jugador1+'">'+puntaje1}/m
  last_response.body.should =~ /#{'"puntaje_jugador'+nro_jugador2+'">'+puntaje2}/m
end

Then(/^el jugador(\d+) tiene el boton "(.*?)" al igual que el jugador(\d+) que tiene el boton "(.*?)"$/) do |nro_jugador1, boton1, nro_jugador2, boton2|
  last_response.body.should =~ /#{'"anotar_jugador'+nro_jugador1+'" value="'+boton1+'">'}/m
  last_response.body.should =~ /#{'"anotar_jugador'+nro_jugador2+'" value="'+boton2+'">'}/m
end
