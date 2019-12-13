Feature: 

Como controlador de robots 
Quiero mover mi robot
Para que mi robot cambie su posicion

Scenario: 
Given entro a mover robot
When ingreso la letra "A" en el campo "movimiento1"
Then deberia ir a movimientoss

Scenario: 
Given entro a mover robot
When ingreso la letra "I" en el campo "movimiento1"
Then deberia ir a movimientoss

Scenario: 
Given entro a mover robot
When ingreso la letra "D" en el campo "movimiento1"
Then deberia ir a movimientoss


Scenario: 
Given entro a mover robot
When ingreso la letra "AIDDD" en el campo "movimiento1"
Then deberia ir a movimientoss