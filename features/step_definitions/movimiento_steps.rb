Given("entro a mover robot") do
    visit '/movimientos'
  end

  When("ingreso la letra {string} en el campo {string}") do |valor,campo|
    fill_in(campo, :with => valor)
  end


Then("deberia avanzar mi robot segun su orientacion")do
visit '/movimientos'
end 
Then("deberia mirar a la izquierda segun su orientacion")do
visit '/movimientos'
end 
Then("deberia mirar a la Derecha segun su orientacion")do
visit '/movimientos'
end 