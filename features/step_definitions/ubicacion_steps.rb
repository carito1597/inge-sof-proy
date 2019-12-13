  Given("entro a ubicar el robot") do
    visit '/ubicaRobot'
  end

  When("ingreso posicion {string} en el campo x {string}") do |valor,campo|
    fill_in(campo, :with => valor)
  end

When("ingreso posicion {string} en el campo y {string}") do |valor,campo|
  fill_in(campo, :with => valor)
end
When("ingreso orientacion {string} en el campo {string}") do |valor,campo|
  fill_in(campo, :with => valor)
end
When("presiona el  boton {string}") do |boton|
  click_button(boton) # Write code here that turns the phrase above into concrete actions
end
Then("deberia observar la posicion {string}")do|mensaje|
    last_response.body.should=~ /#{mensaje}/m
end 


