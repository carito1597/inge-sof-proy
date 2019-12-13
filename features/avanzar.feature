Feature: 

Como controlador de robots 
Quiero que mi robot avance
Para que pueda moverse en el terreno


Scenario: 
Given entro a mover robot
When ingreso la letra "A" en el campo "movimiento"
Then deberia avanzar mi robot segun su orientacion
