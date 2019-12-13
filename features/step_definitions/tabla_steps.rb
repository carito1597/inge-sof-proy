Given("entro a crear un terreno") do
    visit '/crearTabla'
  end

  When("ingreso el ancho {string} en el campo {string}") do |valor,campo|
    fill_in(campo, :with => valor)
  end
  When("ingreso alto {string} en el campo {string}") do |valor,campo|
    fill_in(campo, :with => valor)
  end
  When("hago click en  {string}") do |boton|
    click_button(boton) # Write code here that turns the phrase above into concrete actions
  end
  Then("deberia ver la dimension de mi terreno {string}")do|mensaje|
    last_response.body.should=~ /#{mensaje}/m
  end 
