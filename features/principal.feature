Feature:
    Como controlador de Robots 
    Quiero una pagina principal donde tenga acceso a todas las opciones
    Para ingresar a la opcion que deseo de manera mas facil

    Scenario:
    Given visito la page principal
    When elijo "Crear Tabla"
    Then Deberia ver la pagina para crear tablas 


    Scenario:
    Given visito la page principal
    When elijo "Robot"
    Then Deberia ver la pagina para posicionar un robot


    Scenario:
    Given visito la page principal
    When elijo "Mover Robot"
    Then Deberia ver la pagina para mover el robot
