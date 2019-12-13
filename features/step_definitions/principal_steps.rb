Given("visito la page principal") do
    visit '/principal'
end
When("elijo {string}") do |boton|
    click_button(boton) # Write code here that turns the phrase above into concrete actions
end
Then("Deberia ver la pagina para crear terreno")do
visit '/crearTabla'
end 

Then("Deberia ver la pagina para posicionar un robot")do
visit '/ubicaRobot'
end 

Then("Deberia ver la pagina para mover el robot")do
visit '/movimientos'
end 