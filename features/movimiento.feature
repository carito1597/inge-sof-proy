Feature: 

Como controlador de robots 
Quiero cambiar poder cambiar la orientacion de mi robot
Para que mi robot cambie su orientacion

Scenario: 
Given entro a mover robot
When ingreso la letra "I" en el campo "movimiento"
And hago click en "ejecutar"
Then deberia mirar a la izquierda segun su orientacion

Scenario: 
Given entro a mover robot
When ingreso la letra "D" en el campo "movimiento"
And hago click en "ejecutar"
Then deberia mirar a la Derecha segun su orientacion
