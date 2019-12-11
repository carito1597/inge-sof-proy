Feature: 

Como controlador de robots 
Quiero mover mi robot
Para desplazarlo en la tabla

Scenario: 
Given entro a mover robot
When ingreso la letra "A" en el campo "movimiento"
And hago click en "ejecutar"
Then deberia avanzar mi robot

Scenario: 
Given entro a mover robot
When ingreso la letra "I" en el campo "movimiento"
And hago click en "ejecutar"
Then deberia ver mirar a la izquierda segun su orientacion

Scenario: 
Given entro a mover robot
When ingreso la letra "D" en el campo "movimiento"
And hago click en "ejecutar"
Then deberia ver mirar a la Derecha segun su orientacion
