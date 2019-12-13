Given("entro a crear terreno") do
    visit '/crearTabla'
end

Given ("entro a ubicar robot") do
    visit '/ubicaRobot'
end

Given("entro a mover robot ") do
    visit '/movimientos'
end

When("presiona selecciono el boton {string}") do |boton|
    click_button(boton) # Write code here that turns the phrase above into concrete actions
end

Then("ir a la pagina principal")do
visit '/principal'
end 
