Feature: 

Como controlador de robots 
Quiero poder crear una tabla
Para mover mi robot en ella

Scenario: 
Given entro a crear tabla
When ingreso el ancho "5" en el campo "ancho"
And ingreso alto "4" en el campo "alto"
And hago click en  "crear"
Then deberia ver la dimension de mi tabla "(5,4)"
