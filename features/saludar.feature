Feature:
    Como controlador de robots 
    Quiero ser saludado por mi nombre
    Para sentir la aplicacion mas personalizada

    Scenario:
    Given visito la pagina principal
    When ingreso "Andre" en el campo "nombre"
    And presiono el boton "Ok"
    Then Deberia ver "Andre" 

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

      Scenario:
    Given visito la pagina principal
    When ingreso "Andrea" en el campo "nombre"
    And presiono el boton "Ok"
    Then Deberia ver "Andrea" 



