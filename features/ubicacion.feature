Feature: 

Como controlador de robots 
Quiero poder ubicar a mi robot en una posicion inicial
Para poder moverlo luego

Scenario: 
Given entro a ubicar el robot
When ingreso posicion "3" en el campo x "posicionX"
And ingreso posicion "4" en el campo y "posicionY"
And ingreso orientacion "N" en el campo "orientacion"
And presiona el  boton "posicionaRobot"
Then deberia observar la posicion "(3,4,N)"

Scenario: 
Given entro a ubicar el robot
When ingreso posicion "5" en el campo x "posicionX"
And ingreso posicion "10" en el campo y "posicionY"
And ingreso orientacion "N" en el campo "orientacion"
And presiona el  boton "posicionaRobot"
Then deberia observar la posicion "(5,10,N)"

