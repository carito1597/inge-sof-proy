Given("entro a mover robot") do
    visit '/movimientos'
  end

  When("ingreso la letra {string} en el campo {string}") do |valor,campo|
    fill_in(campo, :with => valor)
  end


When("hago click en {string}") do |boton|
  click_button(boton) # Write code here that turns the phrase above into concrete actions
end
Then("deberia avanzar mi robot")do
visit '/ubicacionRobot'
end 
Then("deberia ver mirar a la izquierda segun su orientacion")do
visit '/ubicacionRobot'
end 
Then("deberia ver mirar a la Derecha segun su orientacion")do
visit '/ubicacionRobot'
end 