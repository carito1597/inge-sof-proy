Given("entro a mover robot") do
    visit '/movimientos'
  end

  When("ingreso la letra {string} en el campo {string}") do |valor,campo|
    fill_in(campo, :with => valor)
  end


Then("deberia ir a movimientoss")do
visit '/movimientos'
end 
