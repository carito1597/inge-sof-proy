  Given("visito la pagina principal") do
    visit '/'
  end
  
  When("ingreso {string} en el campo {string}") do |valor,campo|
    fill_in(campo, :with => valor)
  end
  When("presiono el boton {string}") do |boton|
    click_button(boton) # Write code here that turns the phrase above into concrete actions
  end
  Then("Deberia ver {string}")do|mensaje|
    last_response.body.should=~ /#{mensaje}/m
  end 