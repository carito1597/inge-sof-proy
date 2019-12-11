Feature:
    Como jugador 
    Quiero ser saludado por mi nombre
    Para sentir la aplicacion mas personalizada

    Scenario:
    Given visito la pagina principal
    When ingreso "Juan" en el campo "nombre"
    And presiono el boton "Ok"
    Then Deberia ver "Juan" 

    Scenario:
    Given visito la pagina principal
    When ingreso "Carito" en el campo "nombre"
    And presiono el boton "Ok"
    Then Deberia ver "Carito"

    Scenario:
    Given visito la pagina principal
    When ingreso "Andi" en el campo "nombre"
    And presiono el boton "Ok"
    Then Deberia ver "Andi" 



